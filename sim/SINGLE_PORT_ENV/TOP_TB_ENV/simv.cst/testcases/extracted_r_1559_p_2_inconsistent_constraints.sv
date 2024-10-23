class c_1559_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1559_2;
    c_1559_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx001z0xz01xx10z1x1z0z0z11x0xz0xxzxxxzxzzzzzxzxxzzxzzxzxxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
