class c_1193_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1193_2;
    c_1193_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z001z11zx1zz10z0xz1xzz0zzzzxz0zzxxxzxxxxxzxxzxzzxzxzxzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
