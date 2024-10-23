class c_1231_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1231_2;
    c_1231_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00100x0zzx01x0xzx0x1111z10zx0z0zzzzxxzzzzzxzzzxzzxxzzxzzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
