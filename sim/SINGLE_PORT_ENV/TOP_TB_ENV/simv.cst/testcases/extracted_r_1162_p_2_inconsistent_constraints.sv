class c_1162_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1162_2;
    c_1162_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z1zz010x010xzxzxx1xzz0xz0x1x10xxzxzxzzzzzxxzxxxxxxzxxxzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
