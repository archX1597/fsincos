class c_1043_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1043_2;
    c_1043_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000xx1x0zx1x1zz10z10zx10xzz1z0x1xxzxzzzxxzxzzxxxxxxzxxxxzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
