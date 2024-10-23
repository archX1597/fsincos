class c_1246_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1246_2;
    c_1246_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0xzx01x1z0x1110010x0x10xz010z0zzxzzzxxzxzxxzzxzzzxxzxzzzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
