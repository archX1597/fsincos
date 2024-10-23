class c_1935_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1935_2;
    c_1935_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zx01z1z11x001zx101z100000zxxz0zzxzxxzzxzzxzzzzzxxzzzxzxxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
