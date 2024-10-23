class c_1739_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1739_2;
    c_1739_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zxxxx1xx10z0xx010x0111z11xx0xxzzzzxzzxxxxzxzzxxxxxzxxzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
