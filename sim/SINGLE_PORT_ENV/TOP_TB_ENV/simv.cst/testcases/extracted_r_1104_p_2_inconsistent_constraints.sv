class c_1104_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1104_2;
    c_1104_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01xxx110x1zz0x0xxxxzzxxzx1xx1zxzxxzxxzzxxzxzxzzzxzxzxzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
