class c_1775_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1775_2;
    c_1775_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00010zzxz0zxz10zz0101xz0x0z0000xzzzxzzzzzxxxxzxzzxxzzzzzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
