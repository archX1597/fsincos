class c_1385_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1385_2;
    c_1385_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0z011z0z1zzzzx10xzxxz101x11xxzzzxzzzzzzzxzzxzxxxxxzxzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
