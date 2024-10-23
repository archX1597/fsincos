class c_1299_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1299_2;
    c_1299_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0101xz1xxz11xx000xxzxx0xz0x1001zzzzxzzzxxzzzzzxzxzxxxxzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
