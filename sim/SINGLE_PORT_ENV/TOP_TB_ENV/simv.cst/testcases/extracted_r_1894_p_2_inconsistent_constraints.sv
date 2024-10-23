class c_1894_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1894_2;
    c_1894_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xzx00z000zx0z1z1xxz0x0011z001xzxxzzxzzzzzzzzzxzzxzxzzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
