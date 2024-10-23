class c_1086_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1086_2;
    c_1086_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z0zxz111zzxz1z0xz111z11x0xx0xxzzxxzxxxzzzzzzxxzxxxzxzxxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
