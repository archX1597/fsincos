class c_1973_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1973_2;
    c_1973_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z1xz1zzxzxzx011xxxzx1z0zxxx0xzzxxzzxzzxxzxzzxxxxzxzzzzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
