class c_1779_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1779_2;
    c_1779_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x100x1zzx1001z0xz0x01xxzz1000x0xxzxzzxzzzxxzzzxxxzxzxxxxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
