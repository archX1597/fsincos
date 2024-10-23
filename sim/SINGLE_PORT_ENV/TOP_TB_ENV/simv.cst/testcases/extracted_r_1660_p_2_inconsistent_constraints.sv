class c_1660_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1660_2;
    c_1660_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzz0xx011000011xz0xzz1xz0z11xx1xzzzxzzzxxzzxzxzzxxxxzxzxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
