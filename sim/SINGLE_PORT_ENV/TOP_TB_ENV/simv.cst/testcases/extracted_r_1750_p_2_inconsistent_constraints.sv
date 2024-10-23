class c_1750_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1750_2;
    c_1750_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x01z0zzzx0zx00z0x0xzx1zz0x110x0xzxxzxxzzzxzzzxzxxzzzzzxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
