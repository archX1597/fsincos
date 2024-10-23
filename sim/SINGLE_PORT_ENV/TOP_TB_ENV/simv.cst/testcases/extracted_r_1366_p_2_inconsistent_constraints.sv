class c_1366_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1366_2;
    c_1366_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x001xz0z100zzx1xx011z0010x000zzxzxxxzxzxzxzxxxzzxxxxzxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
