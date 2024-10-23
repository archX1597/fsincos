class c_1336_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1336_2;
    c_1336_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x111x0zx01z0zx00zzz1zx010zxzx0xxzxxzxxxxzxxzzxxxxzxxxzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
