class c_1270_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1270_2;
    c_1270_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111x011zz101xxz11111xxz01zz0x1x0xzxzzzzxxzzzxzzxxxzxzxxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
