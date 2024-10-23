class c_1781_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1781_2;
    c_1781_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z001z01z01z0xx10z0001x1xzz000zzzzzzzxxzxzxzxxzxzzxxxxxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
