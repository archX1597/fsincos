class c_1448_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1448_2;
    c_1448_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z111zzxz00z0xzzz1x00xzx111z11x0zxxzxxzzxxxxxxxxzxxzxzzzzzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
