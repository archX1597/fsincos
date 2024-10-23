class c_1897_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1897_2;
    c_1897_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx11zzz01xzz0xxxxx1zz111xz0xz101xxxxzzzzzxxzxxxzzzzxxxzzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
