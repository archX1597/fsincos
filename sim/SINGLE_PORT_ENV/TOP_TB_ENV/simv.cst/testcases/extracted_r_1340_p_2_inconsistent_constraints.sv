class c_1340_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1340_2;
    c_1340_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1x10zzxzz1x1z0x01xx0zz1zzz10xzzxxzzxxxxzxxxxzxxxxzxzxzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
