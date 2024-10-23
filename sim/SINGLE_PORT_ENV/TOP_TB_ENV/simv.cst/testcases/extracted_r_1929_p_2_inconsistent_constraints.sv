class c_1929_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1929_2;
    c_1929_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx10z0zz1z1011z00zx11zzzz111xzzxxzzxzzxxzzxxxzxxxxxxxxxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
