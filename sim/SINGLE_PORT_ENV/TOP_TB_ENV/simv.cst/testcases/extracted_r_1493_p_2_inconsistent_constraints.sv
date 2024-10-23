class c_1493_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1493_2;
    c_1493_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xx1x0zz11x1x1x01xx0z0xzz110z0xzzxxzzzzxzzxzzxzxzxzzzxzxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
