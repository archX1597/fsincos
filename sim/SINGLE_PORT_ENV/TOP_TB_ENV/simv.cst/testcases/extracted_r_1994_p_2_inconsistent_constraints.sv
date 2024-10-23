class c_1994_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1994_2;
    c_1994_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z000xz000xz1x1xz0z11z0zzxzz1zzzxxxzxxxxxxzxxzzzxzxzxxxzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
