class c_1846_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1846_2;
    c_1846_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx1x0z0z0x00zzz10x01xz1zxz10zzzzxxzzzzzxxzxzxxzzzzxxzxzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
