class c_1590_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1590_2;
    c_1590_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx010zxx0x001x0x011100xx0xz11xzzzxxzxxzzxzxxxzzxzxxxxxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
