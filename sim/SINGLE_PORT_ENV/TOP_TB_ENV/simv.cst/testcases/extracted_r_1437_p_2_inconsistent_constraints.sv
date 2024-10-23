class c_1437_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1437_2;
    c_1437_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx1z1z0xz11z1000x1x0zxz0xx10xzzzxzxxzzxzzzxzzzzzzzxxxxxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
