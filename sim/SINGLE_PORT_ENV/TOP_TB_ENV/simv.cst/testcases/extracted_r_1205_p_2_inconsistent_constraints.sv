class c_1205_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1205_2;
    c_1205_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz1z11z01z0101x1z0x00zxz11x11xzzzzzzzzxzxxxzzxxzzxxxzxxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
