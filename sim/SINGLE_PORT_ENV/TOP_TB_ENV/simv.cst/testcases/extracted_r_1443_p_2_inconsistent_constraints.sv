class c_1443_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1443_2;
    c_1443_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011101000zxxzxzx01z0x1010zxxzzzxxzxzzxzxxxxzzxzxxxxzxzxxzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
