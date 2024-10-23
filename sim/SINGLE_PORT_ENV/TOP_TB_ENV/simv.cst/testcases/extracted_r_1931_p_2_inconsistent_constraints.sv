class c_1931_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1931_2;
    c_1931_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x01z11zz0x1x1zx1xx10z01111x1zxxxzxxxzxxzzxzxxxxxxxzxzxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
