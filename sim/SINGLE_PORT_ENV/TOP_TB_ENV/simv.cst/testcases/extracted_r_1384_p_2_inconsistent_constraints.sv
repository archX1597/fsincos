class c_1384_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1384_2;
    c_1384_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zxz111z0xzz0x11x011100x10x011xzxxzxzxzzxxxxxxxzzzzxxzxzzzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
