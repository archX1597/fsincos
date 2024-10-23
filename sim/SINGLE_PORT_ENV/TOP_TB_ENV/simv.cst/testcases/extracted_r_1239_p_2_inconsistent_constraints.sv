class c_1239_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1239_2;
    c_1239_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10z1z10zz01z0x0x1zzxzxzxxzz110xzxxzxzzzzzzxzzzxxzzxxzxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
