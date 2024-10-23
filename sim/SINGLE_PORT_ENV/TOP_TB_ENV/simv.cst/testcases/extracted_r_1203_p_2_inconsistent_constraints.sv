class c_1203_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1203_2;
    c_1203_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10x1111z011xx1xz110zx1z000zx1z0xzxxxxzzzzzxzzxzzzzxzxxxzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
