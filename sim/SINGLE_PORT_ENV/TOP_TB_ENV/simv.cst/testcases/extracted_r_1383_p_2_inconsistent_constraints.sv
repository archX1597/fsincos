class c_1383_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1383_2;
    c_1383_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zx1zz1x010zz1z100001xzz10x011xzxzzxxxzzzxzzxxzzzxzzzzzzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
