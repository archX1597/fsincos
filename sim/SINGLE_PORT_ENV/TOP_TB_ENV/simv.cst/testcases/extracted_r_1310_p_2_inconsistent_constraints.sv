class c_1310_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1310_2;
    c_1310_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx00zz1111zzx0xz0xzz1z0z0x0zz10xxxxxzzzxzxxzxzzzzzzzzzxxxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
