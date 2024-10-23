class c_1273_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1273_2;
    c_1273_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz001x1z1z0zz0x1xx10x1z011xx01x0xxzzzzxzxzxzxzxxzzxxxzzzxxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
