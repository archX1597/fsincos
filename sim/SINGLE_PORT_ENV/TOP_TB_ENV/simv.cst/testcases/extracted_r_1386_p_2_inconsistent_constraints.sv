class c_1386_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1386_2;
    c_1386_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx0zz1zx10001xx10xzz110xzzz10xxzzzzzxzzxxxzzxzxxzzzxzxzzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
