class c_1910_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1910_2;
    c_1910_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1x000zx0xx100zzz01z1zx11x10xzxxzxzzxzxzxxxxzxzzzxzzxxzxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram