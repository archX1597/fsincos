class c_1332_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1332_2;
    c_1332_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0x1z1xz1z0zx01xz101x1x0xz0xx0zxzzxxxxzxxzzzxzxzzxxxxzxzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
