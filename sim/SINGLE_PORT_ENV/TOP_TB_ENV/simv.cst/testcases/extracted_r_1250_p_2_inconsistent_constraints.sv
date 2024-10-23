class c_1250_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1250_2;
    c_1250_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0100z10xzzz0x0zxxxx1zzz10xxz1zzxzxzzxxxzxxzzzxzzxxzzzzxzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
