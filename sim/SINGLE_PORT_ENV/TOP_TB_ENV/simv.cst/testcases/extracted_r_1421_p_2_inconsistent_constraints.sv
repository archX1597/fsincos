class c_1421_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1421_2;
    c_1421_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x00xzx1z00xz10zxxx1x1xxxzz0z100zzxxzxxzxzxzzxxzzzzxzzzxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
