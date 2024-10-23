class c_1315_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1315_2;
    c_1315_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xxz00x0zxzxzxx01z1z1x0zz011z00xxxxxxzxxzxzxxxxxzzxxzxzxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
