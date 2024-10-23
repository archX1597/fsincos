class c_1113_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1113_2;
    c_1113_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xxzz1zz11x11x00zz0x00x1x0xzxzxxzzzzxxxzxxzxzxzzxzzxzzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
