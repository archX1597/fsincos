class c_1125_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1125_2;
    c_1125_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10x01z10x100z0z01x0x0zz11xzz0z1xzxzxxxzxxzzxzxxxzzzzxxzxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
