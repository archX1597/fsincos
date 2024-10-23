class c_1048_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1048_2;
    c_1048_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1zz10x0xxx1zx0xx10x011z0xzxx1xxxxzzxzzxxzzxzxxzxxzzxxzxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
