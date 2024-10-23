class c_1185_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1185_2;
    c_1185_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1z1x101z001z10xx0x000z0zzz10x1xzzzxzzxxzxzxzxzxxxxzxzzxzzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
