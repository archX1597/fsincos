class c_1876_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1876_2;
    c_1876_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z01x0x10x0xx1xzz110x01zzz0x1zxzzzxxxzxzzxxxxzxzxzxzzxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
