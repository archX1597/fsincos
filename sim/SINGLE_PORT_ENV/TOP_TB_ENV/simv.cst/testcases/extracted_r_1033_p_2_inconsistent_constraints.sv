class c_1033_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1033_2;
    c_1033_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x1xz0010xzzxzz0x0x1x0x00x11z0xxzxzzzzxxxxxxzzzxzzzzzxzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
