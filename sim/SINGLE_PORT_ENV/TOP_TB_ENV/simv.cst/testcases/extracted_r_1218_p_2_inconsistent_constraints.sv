class c_1218_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1218_2;
    c_1218_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x10z0xzz0x0xxzz10z1z0x01xxx1zzxxxzxxxxxxzxzxxxxzzzzzxxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
