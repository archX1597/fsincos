class c_1320_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1320_2;
    c_1320_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1x01z01111x1zx100zx1zx11z11xzzzxxxxzxxzxxzxxzxzzxzzxxzzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
