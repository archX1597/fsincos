class c_1354_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1354_2;
    c_1354_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x001zz0zzx01z100x0x1xz01z1xzz1zzxxxzzxxzxzxzzzzxzxxzzxzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
