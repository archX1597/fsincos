class c_1640_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1640_2;
    c_1640_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x0xz010xzz1x01z1zx00x11zx11z0zzzxzxxxzzxzxzzzzzxzxxzxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
