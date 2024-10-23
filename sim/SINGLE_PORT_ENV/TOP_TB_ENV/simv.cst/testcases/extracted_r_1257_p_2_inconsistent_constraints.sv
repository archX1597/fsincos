class c_1257_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1257_2;
    c_1257_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xzz1x0x11zx01z1x0x1zz1z0zz1z1xxxxxxzzxzzzxxzxxzzxxzxxzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
