class c_1025_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1025_2;
    c_1025_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx001xzx0zxx1zzzz0x1xx010z110zxzxzzxzxzzxxzzxxxxxxzxzzxzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
