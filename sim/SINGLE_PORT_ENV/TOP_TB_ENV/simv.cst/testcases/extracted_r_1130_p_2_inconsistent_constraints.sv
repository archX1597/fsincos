class c_1130_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1130_2;
    c_1130_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z00x010xx1xz110xxzxzxxz0xx0z10zzxxxxzzxzxzxzxxxxzxzxxzzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
