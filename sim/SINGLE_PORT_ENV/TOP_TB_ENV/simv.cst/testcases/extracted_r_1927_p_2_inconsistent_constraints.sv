class c_1927_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1927_2;
    c_1927_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zz1zzxz0xx0111zx0xx10z100z1x01xzxzxzxxzzzzzzzxxxzxxxxxzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
