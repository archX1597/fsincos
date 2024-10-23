class c_1666_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1666_2;
    c_1666_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx011xx111x00011zx0xz10111010xxxzxzzxzzzxzxxxxzxzzxxzzzxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
