class c_1319_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1319_2;
    c_1319_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1101xx0z11z10xxxz1100z000z0xxxxzxxxzzzxxxzxzxzzzzzxxxxzxzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
