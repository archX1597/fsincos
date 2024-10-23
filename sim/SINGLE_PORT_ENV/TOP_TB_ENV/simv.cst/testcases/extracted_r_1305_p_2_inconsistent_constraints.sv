class c_1305_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1305_2;
    c_1305_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzzz0x0zxxx1x0xx0xxx0000zx011zxxxxxzzxxzxxxxzxxxxxxxzxzxxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
