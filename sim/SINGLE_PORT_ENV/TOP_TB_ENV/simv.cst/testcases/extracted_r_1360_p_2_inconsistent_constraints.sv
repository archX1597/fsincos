class c_1360_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1360_2;
    c_1360_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000z11xz11z0zzx0zxz11z00x1001001xxxzxxzzxzzxxzzzxzzxzxxzzzxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
