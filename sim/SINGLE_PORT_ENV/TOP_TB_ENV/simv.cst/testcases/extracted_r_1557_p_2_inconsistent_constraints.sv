class c_1557_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1557_2;
    c_1557_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzz0zzzxz1110xz0xz01xxx1010x00xzxxxxzzxxzxxzzzxzxxzzxzzxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
