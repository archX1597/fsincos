class c_1875_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1875_2;
    c_1875_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zxxx1x1z1110xxx0zxzxz10z1xxxxxxzzxxzzzzzxzxxxzzxzzzxxzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
