class c_1983_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1983_2;
    c_1983_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xz0xx11xxz11zxx111110z1zzx1z0zzxzxxzzzzzxzxzzzzxzxzzxzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram