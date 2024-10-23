class c_1091_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1091_2;
    c_1091_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz01xx0zx1zxx1x1zzz0000x0x00zz0zzxzzzzzxzzzzxzxxxzzxzzzzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
