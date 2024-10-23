class c_1957_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1957_2;
    c_1957_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zzxz0zx0x10zzz1z10x11zx111x0xxzxzzxxxzzxxxxzxxzzxxxxzxxxxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
