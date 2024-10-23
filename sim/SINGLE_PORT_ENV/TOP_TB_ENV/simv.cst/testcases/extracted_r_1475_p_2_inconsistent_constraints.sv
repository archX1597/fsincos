class c_1475_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1475_2;
    c_1475_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x101001001000zxxx0z0zz0xx0zzx1z0xxxxzxzzxzzxzxzxxzxzzzzxzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
