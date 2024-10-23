class c_1435_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1435_2;
    c_1435_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzzxx0x0z101xz0xzzzx01x1z11zz10xxxzzxxxzzxxzzxzzzzzzxzxxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
