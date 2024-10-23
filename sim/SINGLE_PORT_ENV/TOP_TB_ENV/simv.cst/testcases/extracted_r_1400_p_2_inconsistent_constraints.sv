class c_1400_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1400_2;
    c_1400_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x000z0x10zxzz1xz011x01z0z11z010xxxzzxzzxzzxzzxzxzzzxzzxzxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
