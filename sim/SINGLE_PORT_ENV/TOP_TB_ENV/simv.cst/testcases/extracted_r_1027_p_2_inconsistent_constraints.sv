class c_1027_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1027_2;
    c_1027_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzxzz0x0xxz11x1z1xzxxzzx1111xx0xzzxzzxxxxzzzxxxxxxxxxxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
