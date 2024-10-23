class c_1977_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1977_2;
    c_1977_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z01z001x1z10xx10x1xzxzzx1x1x11zzxxzzxxzzxxxxxzxzzxzxxxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
