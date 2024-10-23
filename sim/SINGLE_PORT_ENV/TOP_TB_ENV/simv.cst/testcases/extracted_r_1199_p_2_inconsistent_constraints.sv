class c_1199_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1199_2;
    c_1199_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zx0xx0xzx01001x0xxz01z0101zzx1zxzxzxzxzzzzxxxzxxzxxzxzxxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
