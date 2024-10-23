class c_1121_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1121_2;
    c_1121_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzx0z0zxxzz111000z01x01z1zxx01zzxzxxxzzzzxzxxzxxxxzxzzzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
