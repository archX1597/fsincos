class c_1735_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1735_2;
    c_1735_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zxxx0110101zz0xz01zz0zzxx0x1zxxzzxzzzzzxxxzxxxxzxxzzxzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
