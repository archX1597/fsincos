class c_1038_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1038_2;
    c_1038_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10zz1xzxx1x1x00111010zz11z1zxxz1xzzzxxxzxxxzzzzzxzzzzzzxzxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
