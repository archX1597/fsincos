class c_1686_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1686_2;
    c_1686_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1zx010xx0z0x0x1100zxzx1xz10zzzzxxzxxzxxzzzzzzzxxzzxxzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
