class c_1326_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1326_2;
    c_1326_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z0xz00101zz0x0z00xx10z11x1z0xxzxxxzzxzxxzzzxzxxzxxzzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
