class c_1051_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1051_2;
    c_1051_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zx0xxz1z00xz0xzx1xzzz100z10x11xxxzzxzzzzxxxxzzxzxzxxxxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
