class c_1762_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1762_2;
    c_1762_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z0z0xxx0x1x010x000xz0x11zzxxz1xzxzxxxzxzxzxxzxxzzxzzzzzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
