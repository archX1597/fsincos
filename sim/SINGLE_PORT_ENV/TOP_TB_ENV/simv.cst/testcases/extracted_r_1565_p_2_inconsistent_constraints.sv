class c_1565_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1565_2;
    c_1565_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01x00zxxzz01xx00000xzzxz1xxx1z0zzzzxxzxxzzzxxxxxzzzzxzzzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram