class c_1402_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1402_2;
    c_1402_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzx01xzxx0z0x11xz1000zx1000z00xxxxxzxxzzxxzzzzxxzxxxxzxxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
