class c_1363_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1363_2;
    c_1363_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx01z1z0z1zz1x100zz1xx01x0xxz0zzzxzzzzzzxxzzxzzzzxzxzzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
