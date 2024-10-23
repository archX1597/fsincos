class c_1212_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1212_2;
    c_1212_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz0100x01x101xz1x0zx0xxxxzz10zzzxzxzxxzzxzzxzzzxxzxxzzxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
