class c_1933_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1933_2;
    c_1933_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxz01xz1000z0000zz001x00x10zx1zxzzzzzzzxxzxxzxzzxzxxzxzxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
