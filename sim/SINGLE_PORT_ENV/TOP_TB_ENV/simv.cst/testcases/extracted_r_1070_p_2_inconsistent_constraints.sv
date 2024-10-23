class c_1070_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1070_2;
    c_1070_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxzz011000110000zz01z0xx1xxzx00zxzzzzxzzzzxzxzxzzzzxzxxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
