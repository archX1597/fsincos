class c_1018_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1018_2;
    c_1018_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzxx00011zz0x1zxx1xz0z1z01z1zzxxxzxzzzxxxzzzzxzzxxxzxzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
