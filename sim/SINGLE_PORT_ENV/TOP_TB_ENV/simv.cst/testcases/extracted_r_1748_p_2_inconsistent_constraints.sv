class c_1748_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1748_2;
    c_1748_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x10z10x0x10x0z01z1x010100x110zxzzzxxxzxzxzxxzzzzzxxxzxzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
