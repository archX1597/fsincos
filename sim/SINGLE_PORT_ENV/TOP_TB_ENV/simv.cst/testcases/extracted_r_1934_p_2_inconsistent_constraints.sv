class c_1934_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1934_2;
    c_1934_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zx1x0zx110x0z00z010x11x110xzzxxzxzzzzzzxzzzzzzxzxxxzzxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
