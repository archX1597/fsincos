
% Clenshaw 算法的递归实现
function result = clenshawRecursive(k, coeffs, x)
    if k == 0
        result = coeffs(1) * cos(0);
    elseif k == 1
        result = coeffs(1) * cos(0) + coeffs(2) * cos(acos(x));
    else
        result = 2 * x * clenshawRecursive(k-1, coeffs, x) - clenshawRecursive(k-2, coeffs, x) + coeffs(k+1) * cos(k * acos(x));
    end
end


