class c_1327_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1327_2;
    c_1327_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzz0xz0xxz100x0101zz110x10zzx00zxzzxzzxxzxxxzxxxxxzxzxxzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
