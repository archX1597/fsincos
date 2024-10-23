class c_1447_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1447_2;
    c_1447_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xx0x11000z0zzxxxz0010xxz0zz0xxxxxxxzxxzzxxxzxzzzzxxxxzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
