class c_1032_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1032_2;
    c_1032_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0z0x1xx1z111100001x0xz01z01xzzzxzzxxzxzzxzxxxxxzxxxzzzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
