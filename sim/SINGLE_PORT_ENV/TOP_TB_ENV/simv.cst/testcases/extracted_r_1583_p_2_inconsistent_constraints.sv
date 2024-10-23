class c_1583_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1583_2;
    c_1583_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzz1010x0000z00x1xx1z0zz0x01zz1zxxzzzxzzxxxzxzzzzxxzzzzzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
