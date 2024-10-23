class c_1549_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1549_2;
    c_1549_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zzx1x001100zzz1z101x1z1zz0xzz1xxxzxzzxxxxxxxzzxxzzxzxzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
