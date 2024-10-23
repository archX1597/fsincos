class c_1426_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1426_2;
    c_1426_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zxzz000x011z01z0x10zzzx11x1x10xxzxzzxxzzxxzzxxzzzzzzxxzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
