class c_1012_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1012_2;
    c_1012_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0xxx0z1110000z0xx0001x0z1000z1zzzzzxxxzxxxxzxxzzxzzxzzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
