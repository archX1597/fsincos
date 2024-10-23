class c_1990_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1990_2;
    c_1990_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z0xzx0z11x01zxzx1x01x0111zx0zxxzzxzxzzxxxxzxxzzzxzxxzzzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
