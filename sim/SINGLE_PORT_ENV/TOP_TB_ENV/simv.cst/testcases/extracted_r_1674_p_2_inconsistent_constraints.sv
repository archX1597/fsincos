class c_1674_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1674_2;
    c_1674_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000zzxz1z0zx1zz0xxz100xxz010010xzzxzzxzxxzzxxzxzxxxxzxxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
