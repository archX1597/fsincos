class c_1450_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1450_2;
    c_1450_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzxz0z0z10zz11xx100101zzx0z0xzxxzzxzzzxzzzxzxxxxzxxxzzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
