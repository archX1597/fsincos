class c_1624_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1624_2;
    c_1624_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1z0xx1z0xxzxx0zz11x0z0xxzz10x1xzxzzxxxzzxzzzxzxzxzxxzzzzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
