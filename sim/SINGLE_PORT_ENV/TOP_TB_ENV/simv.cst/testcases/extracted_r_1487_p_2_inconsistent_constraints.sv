class c_1487_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1487_2;
    c_1487_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx10z10zxxxz0x01x00zz10xzxz0zx1zzzzxxxxxzxxzxxzzxxzzxxxzzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
