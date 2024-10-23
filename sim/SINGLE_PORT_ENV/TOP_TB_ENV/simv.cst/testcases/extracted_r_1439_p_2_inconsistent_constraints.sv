class c_1439_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1439_2;
    c_1439_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0xz1z11x000xxzx1xx10xzx1xx01x1zzzzzxxzzxzxxzzzzzzzxxzzzzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
