class c_1620_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1620_2;
    c_1620_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxxx110xx1011xz0xx1z0zz10x1x00zxzzzzxzxxzxxzxxxzzxxzxzzzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
