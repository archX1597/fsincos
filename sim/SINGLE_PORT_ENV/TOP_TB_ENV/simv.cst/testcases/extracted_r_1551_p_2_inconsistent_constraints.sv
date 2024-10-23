class c_1551_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1551_2;
    c_1551_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01zzz010101z0xxzz0xxz0xx01xx1zxzxzxzxzzzzxzxxxxxzxxxxzzxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
