class c_1304_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1304_2;
    c_1304_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z1x11z0000xxx111zx001xxz10xxz0zzxxzxxxzxzzxzxzxzxzzzzxzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
