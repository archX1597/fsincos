class c_1722_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1722_2;
    c_1722_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx01x011z1z1x00x11z00xxx10zx01xxzxzxxxxzzxxxxzzxzzxxzzxxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
