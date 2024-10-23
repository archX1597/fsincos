class c_1148_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1148_2;
    c_1148_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10z1zx1x0xxzx10xx0010011x000x0xzzxzxxzxzzzzzxzxzzxzzxxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
