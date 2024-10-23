class c_1476_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1476_2;
    c_1476_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x111x10zz0xxxz101xzz01z000111z0zzxxzxxxzzzzzxzxxxxzzzzzzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
