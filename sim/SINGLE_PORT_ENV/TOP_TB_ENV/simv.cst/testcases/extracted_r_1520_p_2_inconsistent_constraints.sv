class c_1520_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1520_2;
    c_1520_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x1zxzx01xx0110zz11zzz01x11xxz0xzxzxxxxxzxxzzxzxxxzzxxxxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
