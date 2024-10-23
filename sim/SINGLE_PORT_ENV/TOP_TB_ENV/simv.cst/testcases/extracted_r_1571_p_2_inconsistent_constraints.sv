class c_1571_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1571_2;
    c_1571_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xxz01x0z1zzz11zx0xx1x1z00z101zzzxzxzxzxzxxzxzzxxxxzzzxzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
