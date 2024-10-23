class c_1608_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1608_2;
    c_1608_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz111x1x0z1xz011z01z1z0xzz11xx0zxxxxxxzzxzzxxzzxzzzzzxzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
