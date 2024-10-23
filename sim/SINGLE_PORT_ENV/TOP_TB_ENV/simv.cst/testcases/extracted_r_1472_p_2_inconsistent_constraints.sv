class c_1472_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1472_2;
    c_1472_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z10zzxzx10x1xz0x0z0x11z100x1zzxxxxzxxzxzxzzzxzzzxxzzxxxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
