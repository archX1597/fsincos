class c_1029_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1029_2;
    c_1029_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x10z00x0xzzzxxxzx11x01zz0xxxz0xxzzzxxzxxxxzxxzzzzzxxzzzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
