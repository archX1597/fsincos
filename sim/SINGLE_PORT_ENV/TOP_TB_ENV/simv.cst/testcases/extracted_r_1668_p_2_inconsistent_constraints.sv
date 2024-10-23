class c_1668_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1668_2;
    c_1668_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z10zzzxxx1z10xzx010z0xxz0z110zzzzxzzzzzxzxzzxxzxzzxxxzzxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
