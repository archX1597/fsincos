class c_1972_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1972_2;
    c_1972_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0x11xx01101xxx1xx10x1xxx1xz01xxxxxxzzzxxxxxzxxxzzzzxxxzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
