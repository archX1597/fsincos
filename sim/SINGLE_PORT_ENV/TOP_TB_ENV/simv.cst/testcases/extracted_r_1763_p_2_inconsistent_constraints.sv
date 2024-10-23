class c_1763_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1763_2;
    c_1763_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx1zx10zz010z010z1x11zx1zzxz10xxxxxxzzzxzzzxxzzxxzxzzxzzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
