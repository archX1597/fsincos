class c_1864_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1864_2;
    c_1864_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx10z1000101x10xz00z1zxxxx110zzzxxxzxxzzxxxzzxxzzzxzzzzzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
