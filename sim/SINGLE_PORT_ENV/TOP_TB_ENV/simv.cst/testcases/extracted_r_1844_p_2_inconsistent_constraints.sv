class c_1844_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1844_2;
    c_1844_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzxx0011x0xx0zz0x1zxx0x0zzzxz0xzxzzxzxxzxzzzzzzzxxxxxzxxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
