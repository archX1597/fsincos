class c_1259_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1259_2;
    c_1259_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x01xxzz0x1x1x10010111xxzx0z1xxxxzzxxzzxxzxxzzxzxxxxxzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
