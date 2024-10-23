class c_1471_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1471_2;
    c_1471_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxz0zzz0111zx1000x1xzx00x00x11xxxxxxzxzzxxxzxxxxzzzxzzzxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram