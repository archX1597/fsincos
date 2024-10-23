class c_1077_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1077_2;
    c_1077_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz0x11101xx00z110zz10z1zz110zx0xzxxzzzxzzxxzzxzxxxzzxzxzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
