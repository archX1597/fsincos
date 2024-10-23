class c_1500_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1500_2;
    c_1500_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx0z101x1z0x11110z0xx1010zx11zxxzxxxxxxzxzzxxzzzzxzxxxxzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram