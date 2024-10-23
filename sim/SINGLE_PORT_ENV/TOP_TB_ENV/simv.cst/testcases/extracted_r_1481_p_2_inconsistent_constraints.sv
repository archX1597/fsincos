class c_1481_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1481_2;
    c_1481_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzz11101000zz001100101001x10zx0zzxxzzxxzxzxxzxxzxzzzxzzzzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
