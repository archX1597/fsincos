class c_1829_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1829_2;
    c_1829_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x01z1x00xx1x0xzzz0zx10zxz01z11zxzxxxzxxzzxzxxzxzxxxzxzzxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
