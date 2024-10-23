class c_1028_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1028_2;
    c_1028_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0z010zz00zzz0zxz01z10x1z1001zzxxzxzzzzxxzzxzzxxxzxzxxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
