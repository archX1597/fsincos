class c_1276_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1276_2;
    c_1276_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1zx10z01xzzxx11x1x0zzxzxz11xzxxzxxzzxzzzzxxzzxzxzzxzzzxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
