class c_1080_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1080_2;
    c_1080_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111z0zxx0zxzxx0zxxx1zz10xxz1010xxzxzzxzxxxxzzzzzxxzzzxxxzzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
