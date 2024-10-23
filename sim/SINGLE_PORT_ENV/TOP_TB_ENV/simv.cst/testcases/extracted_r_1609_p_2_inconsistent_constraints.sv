class c_1609_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1609_2;
    c_1609_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1z0x0zx11000zx110x0010z0zx00zxzxxxxxzxxxzxxzzxzxxxzzzxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram