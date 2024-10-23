class c_1885_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1885_2;
    c_1885_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzz0x1z011z1xz01zx1zzx01zz1z11zzxxzxzzxxzxzxzzzzzzxzzxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
