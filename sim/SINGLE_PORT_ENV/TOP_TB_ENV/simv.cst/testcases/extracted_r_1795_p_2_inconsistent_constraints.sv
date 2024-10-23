class c_1795_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1795_2;
    c_1795_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxzx0zzzz00zz1zxz01z1x0xxx100zzzxzzxxzzxxxzzzxzzxzzzzxxzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
