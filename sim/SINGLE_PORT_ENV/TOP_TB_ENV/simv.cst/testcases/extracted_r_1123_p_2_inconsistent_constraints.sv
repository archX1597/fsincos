class c_1123_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1123_2;
    c_1123_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01x0xzx1z0101xzzxz10011xz0z1010xxzxzxzzzzxzzxzzzxzxxxzxzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
