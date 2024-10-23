class c_1648_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1648_2;
    c_1648_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzz0xxx0zz10zzz0zzz0010zzx000zzzxxxzxxxxzxxzxzxzxxzzxzzxzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
