class c_1843_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1843_2;
    c_1843_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0xx0zzxxx1z11x0z1xxz0z01110zxxxzxxzxzzzxzzxzzxzxzxxzxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
