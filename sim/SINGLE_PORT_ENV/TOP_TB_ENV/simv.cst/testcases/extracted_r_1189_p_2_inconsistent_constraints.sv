class c_1189_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1189_2;
    c_1189_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00z0x010zxxxx100x000000zxzzz0z0xxzxxzzzxzxxxzxzxzxxzxxzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
