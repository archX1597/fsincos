class c_1736_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1736_2;
    c_1736_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0101xxz1xzz00zzxx0x11zx11xzx1x1xxxzzzxzxzzzxzxxxxzzzxxxxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
