classdef chebyshev_pro
    properties
        a
        b
        func
        c
        mid
        expr_x,
        expr_d,
    end
    
    methods
        function obj = chebyshev_pro(a, b, func)
            obj.a = a;
            obj.b = b;
            obj.func =func;
            
            bma = 0.5 .* (b - a);
            bpa = 0.5 .* (b + a);
            obj.mid = bpa;
            f = zeros(size(a,1), 4);
            for k =1:4
                f(k) = func(2*pi*(cos(pi * (k -0.5) / 4) * bma + bpa));
            end
            fac = 2.0 / 4;
          % 初始化系数 c
            obj.c = zeros(1, 4);

% 计算系数 c
            for j = 1:4
                    sum_val = 0;
                        for k = 1:4
                            sum_val = sum_val + f(k) * cos(pi * (j-1) * (k -0.5) / 4);
                        end
                         obj.c(j) = fac * sum_val;
            end
            obj = Exp_Series_D(obj);
            obj = Exp_Series_X(obj);
        end
        

        function obj=Exp_Series_X(obj)
            syms x;
            obj.a = obj.a;
            obj.b = obj.b;
            y = (2.0 .* x - obj.a - obj.b) .* (1.0 ./ (obj.b - obj.a));
            y2 = 2.0 .* y;
            [d, dd] = deal(obj.c(end), 0); % Special case first step for efficiency
            for cj = fliplr(obj.c(2:end-1)) % Clenshaw's recurrence
                [d, dd] = deal(y2 .* d - dd + cj, d);
            end
            result = y .* d - dd + 0.5 .* obj.c(1); % Last step is different
            result = expand(result);
            result = collect(result);
            obj.expr_x = sym2poly(result);
        end

        function obj=Exp_Series_D(obj)
            syms D;
            obj.a = obj.a;
            obj.b = obj.b;
            y = (D) .* (2.0 ./ (obj.b - obj.a));
            y2 = 2.0 .* y;
            [d, dd] = deal(obj.c(end), 0); % Special case first step for efficiency
            for cj = fliplr(obj.c(2:end-1)) % Clenshaw's recurrence
                [d, dd] = deal(y2 .* d - dd + cj, d);
            end
            result = y .* d - dd + 0.5 .* obj.c(1); % Last step is different
            result = expand(result);
            result = collect(result);
            obj.expr_d = sym2poly(result);
        end


        function result = eval(obj, x)
            obj.a = obj.a;
            obj.b = obj.b;
            y = (2.0 .* x - obj.a - obj.b) .* (1.0 ./ (obj.b - obj.a));
            y2 = 2.0 .* y;
            [d, dd] = deal(obj.c(end), 0); % Special case first step for efficiency
            for cj = fliplr(obj.c(2:end-1)) % Clenshaw's recurrence
                [d, dd] = deal(y2 .* d - dd + cj, d);
            end
            result = y .* d - dd + 0.5 .* obj.c(1); % Last step is different
        end
    end
end
