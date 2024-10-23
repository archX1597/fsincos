class c_1165_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1165_2;
    c_1165_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx101zxxx00x01zx0z100x1xz0z10xzzxxxxxzxzzxxxxzzxzzxzxxxzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
