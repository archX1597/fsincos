class c_1514_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1514_2;
    c_1514_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz0zxx0x0z0zzz0z1000z0xx1xx1zxzxxxzzxxxzzxxxzxxxzzxxxzxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
