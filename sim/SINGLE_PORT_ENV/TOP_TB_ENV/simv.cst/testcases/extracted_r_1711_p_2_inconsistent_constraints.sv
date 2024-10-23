class c_1711_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1711_2;
    c_1711_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xxz001zx0110zxxx11x01z0011xzz0zxxxxxxzzxxxzxzzzzxxxxxzxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
