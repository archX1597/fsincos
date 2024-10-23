class c_1302_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1302_2;
    c_1302_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zzz1z11x000z01zx01z0x1zzxxxxx1xzxxxxxzxzxzzxxxxxzxzxxzzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
