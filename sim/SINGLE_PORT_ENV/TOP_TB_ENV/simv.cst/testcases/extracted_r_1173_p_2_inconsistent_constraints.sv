class c_1173_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1173_2;
    c_1173_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxxz1z01z1x10zx1zxxxz1z001xzx0zzxxxxxxzzxxxzxzzzxzxzxzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
