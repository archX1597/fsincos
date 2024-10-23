class c_1414_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1414_2;
    c_1414_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0xzzxx1zz0x11x1xzzz0zz00x10zxxxzzxxzzzxxzzzxzxzxxzzxxzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
