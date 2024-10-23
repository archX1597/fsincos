class c_1389_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1389_2;
    c_1389_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx100z1z0zxx110xxxzz01xz0101xx0xzzxxzxxzxzzxzxzzzxxxxxxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
