class c_1281_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1281_2;
    c_1281_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000111111xxxx10z0zxz0010xzz10011xzxxzzxzxxxzzzxzxxxxzzxzzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
