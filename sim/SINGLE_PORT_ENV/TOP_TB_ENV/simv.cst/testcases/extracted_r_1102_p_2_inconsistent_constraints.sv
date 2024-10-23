class c_1102_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1102_2;
    c_1102_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01z1zz1000x10zz0x1x111x10z11z0xzzxxzzxzzzzzxzxzxzxzzzxzxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
