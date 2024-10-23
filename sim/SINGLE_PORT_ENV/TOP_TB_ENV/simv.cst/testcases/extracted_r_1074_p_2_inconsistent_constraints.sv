class c_1074_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1074_2;
    c_1074_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z01z0010xxxx1x1zx00zx0x10x0x100zxzzxxzzxxxxzxzzxxzxzzzxxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
