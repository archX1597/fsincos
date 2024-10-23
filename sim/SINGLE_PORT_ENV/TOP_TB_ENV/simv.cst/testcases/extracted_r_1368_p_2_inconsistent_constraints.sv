class c_1368_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1368_2;
    c_1368_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz11101x01z0x1zxxxx101x0x01zz11xzxxzzzxzzxzzzxxzzzxzxzzxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
