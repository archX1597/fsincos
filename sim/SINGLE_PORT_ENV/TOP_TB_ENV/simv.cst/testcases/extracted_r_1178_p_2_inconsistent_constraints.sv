class c_1178_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1178_2;
    c_1178_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zz101xxzzzx010x1z0xzxz0xxz110zxxxxzxzzxzzxxzzxzzxxzzxxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
