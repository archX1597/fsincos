class c_1138_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1138_2;
    c_1138_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zzx1zz1xxzzzx1xzz0z1zxxz00x0zxxzzzxzxzxxzzxxzzzxxxxxzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
