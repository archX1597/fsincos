class c_1132_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1132_2;
    c_1132_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00100x1x10x0zz1zzxz0zz0x101zzxxzzxzzzxzzxxxzzzxxxxzxxxxzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
