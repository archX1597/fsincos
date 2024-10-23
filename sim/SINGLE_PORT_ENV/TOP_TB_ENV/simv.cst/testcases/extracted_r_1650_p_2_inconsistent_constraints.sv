class c_1650_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1650_2;
    c_1650_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zzx11z1x01z0xz1z1x0z0zz0xzxxzzzxzzzxzxxzzxzxxxxzzxxxxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
