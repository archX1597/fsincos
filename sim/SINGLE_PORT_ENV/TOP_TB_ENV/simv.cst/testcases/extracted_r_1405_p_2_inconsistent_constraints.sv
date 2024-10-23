class c_1405_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1405_2;
    c_1405_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z1x10z1x11zxz0zz0x1z1z0100110zzxxzxzxxzxxxzzxzxzzxxxzxzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
