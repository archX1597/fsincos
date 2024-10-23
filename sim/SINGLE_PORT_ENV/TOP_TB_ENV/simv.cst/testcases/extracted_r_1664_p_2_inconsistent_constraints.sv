class c_1664_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1664_2;
    c_1664_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01000xxz1110xzz10z01z0zx0x1x1z1xxxxzxzzzxxxzxxxzzxzzzxzxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
