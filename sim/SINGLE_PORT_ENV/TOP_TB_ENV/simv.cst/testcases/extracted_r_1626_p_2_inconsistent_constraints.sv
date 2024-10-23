class c_1626_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1626_2;
    c_1626_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z1z1zz1z10z11x1000xzzz0100000xxxxzzzxzxxzxzzxzzzxzxxxzzxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
