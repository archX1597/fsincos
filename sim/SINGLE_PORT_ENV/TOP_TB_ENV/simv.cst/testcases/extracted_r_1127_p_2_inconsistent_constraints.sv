class c_1127_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1127_2;
    c_1127_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00zzz11z01xxz1x0000xzzx1x1z1x0xxzxxzxxzzxxzzzxzzxxxzzzzzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
