class c_1769_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1769_2;
    c_1769_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1x110x1x0z00xzz11z01zz01110zzzxzzzzzxxxxxxxzxzzxxzzzxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
