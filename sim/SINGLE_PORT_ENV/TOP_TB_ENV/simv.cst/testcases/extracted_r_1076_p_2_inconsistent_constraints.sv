class c_1076_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1076_2;
    c_1076_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z1zzz1z0xxz0x0xxz10zzzz101zxx1xzxxzxxxzxxzxxxxxzzzxzxxzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
