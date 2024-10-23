class c_1883_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1883_2;
    c_1883_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xxzz10z1z01z10x1zxxz1z0x110z01xzzzxzzxzzxxzxxxzxxxxzxxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
