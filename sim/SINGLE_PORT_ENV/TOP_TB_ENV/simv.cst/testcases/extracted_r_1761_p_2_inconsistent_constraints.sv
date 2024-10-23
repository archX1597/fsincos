class c_1761_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1761_2;
    c_1761_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0011z0xxxx000z10110z0xzz01xx1xzzzzxzxxzxzxxzzxzxzzzzxxzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
