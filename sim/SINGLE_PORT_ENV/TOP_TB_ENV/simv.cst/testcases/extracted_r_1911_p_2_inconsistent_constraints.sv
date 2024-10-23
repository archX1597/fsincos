class c_1911_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1911_2;
    c_1911_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11001xzzzzz1100x01x0z000011xzzxzzxxzxxzxxxzzxxzxxzzzxxxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
