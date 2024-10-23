class c_1059_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1059_2;
    c_1059_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z01z000zx001z01x01zz0zxz0z100x1zzxxxxzzzzzzxxzzzzxzxzzzzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
