class c_1265_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1265_2;
    c_1265_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz011z0x11z10z11z0x0z000zz1zz10xzxxzzzzzxzxxxxxxzzxzzxzxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
