class c_1477_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1477_2;
    c_1477_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x100x0z11xx0xx1z01x111zz00111z1xxxxzzxzxzxxzzzxzxxzzxzzzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
