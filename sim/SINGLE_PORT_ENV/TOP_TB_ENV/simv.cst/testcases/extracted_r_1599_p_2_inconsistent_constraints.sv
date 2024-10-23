class c_1599_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1599_2;
    c_1599_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1zx1xx1xz0zxxx0x01zzxxzzx0xz1xzxzxxxxzxzzxxxzzzxxxzzxxxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
