class c_1828_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1828_2;
    c_1828_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzx0zz00xx110zzzxzzzz0z00xzz10xxxzzzxzzxzzxzzzzzzxzxxzzxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
