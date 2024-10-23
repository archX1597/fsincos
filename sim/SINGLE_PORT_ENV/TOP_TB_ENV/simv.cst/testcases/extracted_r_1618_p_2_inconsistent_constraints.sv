class c_1618_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1618_2;
    c_1618_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzz01xzx1xx1z0z0000zz0xzx10zz00zzzzzxzzxxzzxzxxzxxxxxzxxxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
