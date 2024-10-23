class c_1068_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1068_2;
    c_1068_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111x0x0xz01x00100xzx0zzzxz0x1x0zzzxzzzxxzzxxzxxxzxzxzzzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
