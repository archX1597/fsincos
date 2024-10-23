class c_1862_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1862_2;
    c_1862_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz1xzzz0x1z1x11zz0x01zz10x01xz0zxzzzxzxxzxzxxxzzxzzxxzzxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
