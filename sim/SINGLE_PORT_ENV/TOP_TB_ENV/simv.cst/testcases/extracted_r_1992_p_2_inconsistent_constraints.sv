class c_1992_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1992_2;
    c_1992_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zx1xzxz0xxxx111zzzzx1z1zzz010xzzxxzzxzzzzxzzzxxxxzzxzzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
