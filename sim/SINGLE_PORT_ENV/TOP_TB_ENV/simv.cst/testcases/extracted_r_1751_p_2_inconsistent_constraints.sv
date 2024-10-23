class c_1751_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1751_2;
    c_1751_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x0xxz0z011z11z01x01011x011x0zxzxzzxxzxxzzxzzzxxzzxxzxxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
