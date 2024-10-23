class c_1944_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1944_2;
    c_1944_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11xxzx0zxxz10x11x0x1zzxz0xzz0x1zzzzzzxzzzzzxxxzzxxzxzzxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
