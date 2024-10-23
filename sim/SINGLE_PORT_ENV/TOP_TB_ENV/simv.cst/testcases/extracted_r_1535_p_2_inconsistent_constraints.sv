class c_1535_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1535_2;
    c_1535_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0zxx100xxx0xx1zz111x10z111xz1xzxxzxzzzxxzxxzzxxxxxzxxzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
