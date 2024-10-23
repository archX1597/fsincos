class c_1181_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1181_2;
    c_1181_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx0zz1z0100xx11xxz0xzxzzx111zzxzxzxxzxzzxxxxxzzzzxzzxxxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
