class c_1871_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1871_2;
    c_1871_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01xx0x010z10zz011010x10xz0z0011zxzxzzzxzzzxxzzzzxzzxxxzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
