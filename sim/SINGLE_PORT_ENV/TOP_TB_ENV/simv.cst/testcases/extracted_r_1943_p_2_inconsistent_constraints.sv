class c_1943_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1943_2;
    c_1943_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxxx1zz00z00x10z01x10z010xxxz00zxzzxzxzzzxxzzzzxxzzxzzzzzxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
