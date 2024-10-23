class c_1430_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1430_2;
    c_1430_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1z00z1zz0xx10100x1z1zxxxz0xx1xxxxzzzxzxzzxzzzxzzxzxxzzxzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
