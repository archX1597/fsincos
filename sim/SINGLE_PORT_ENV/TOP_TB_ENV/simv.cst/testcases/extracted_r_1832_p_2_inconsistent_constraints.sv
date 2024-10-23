class c_1832_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1832_2;
    c_1832_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0z0xx11x0110z10x111xxxzx1x10xzxxzxzzxzzxzzzxzzzzzzxzxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
