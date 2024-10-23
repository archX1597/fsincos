class c_1838_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1838_2;
    c_1838_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0xxx0x1x111x1zx0xzxzxz01001zzzxzzxxzxxzzzzzzzzzxzzzxxzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
