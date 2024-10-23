class c_1531_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1531_2;
    c_1531_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x011000z11x1x110z0zxx1111z1x1zxzzzxxzxxzxxzxzxxxxzzxzxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
