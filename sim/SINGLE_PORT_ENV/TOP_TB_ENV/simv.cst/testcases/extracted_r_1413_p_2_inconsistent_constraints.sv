class c_1413_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1413_2;
    c_1413_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxxz1101z1zzzzzzz0xx1zzzzzzx01zzxzzzxxxzxzxzxzxxxzxxxxxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
