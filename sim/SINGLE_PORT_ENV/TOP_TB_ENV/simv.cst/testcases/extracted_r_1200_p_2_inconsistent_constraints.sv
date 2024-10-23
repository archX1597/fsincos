class c_1200_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1200_2;
    c_1200_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0z0xxzz0x01x11z0xx0x1x1z0z01zzxxxzxxxxxxzzxxxzxxzzzzzzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
