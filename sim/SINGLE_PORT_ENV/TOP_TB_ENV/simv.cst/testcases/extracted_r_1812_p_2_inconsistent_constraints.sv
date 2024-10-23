class c_1812_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1812_2;
    c_1812_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z0z1x0x111zx1xxz10zx11001zxzzzzzzxxxxxxzzxzxzxxxxzxxzzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
