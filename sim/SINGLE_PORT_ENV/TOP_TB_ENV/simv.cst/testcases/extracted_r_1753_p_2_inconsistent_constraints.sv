class c_1753_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1753_2;
    c_1753_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z111xx0x11zxx0zzxx0z11xx11111z0xxxzxxxxzxxxxxxxxxxxxxxzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
