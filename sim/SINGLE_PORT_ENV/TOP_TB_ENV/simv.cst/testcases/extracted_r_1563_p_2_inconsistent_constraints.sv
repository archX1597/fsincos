class c_1563_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1563_2;
    c_1563_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx111x1xz0111x00zxz10xzx00xzx01zzzxzzxxxzxxzxxxzzzzxzzxxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
