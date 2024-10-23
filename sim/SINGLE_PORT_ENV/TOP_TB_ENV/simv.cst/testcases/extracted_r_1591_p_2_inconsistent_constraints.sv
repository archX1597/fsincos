class c_1591_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1591_2;
    c_1591_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zzxz000x1zz1z0x1xxz001xzx00x00xzxzzxzxzzxzzzxzxzxzzzxxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
