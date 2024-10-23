class c_1053_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1053_2;
    c_1053_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x1x1z0x0zz11x1xx1x0xz0zx00x0xzzzxzzzzxxxzzzzxzzxxzzxxxzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
