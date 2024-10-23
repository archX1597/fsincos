class c_1467_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1467_2;
    c_1467_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzz000zz0z01x0zx01xxzxz111zz10zzxzzzxxxxzzzxxxzxxzxzxzxzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
