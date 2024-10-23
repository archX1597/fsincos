class c_1423_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1423_2;
    c_1423_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101z1zx1x1zzzz1zz10zzx01x1z10000xxxzzzxzxzxzxzxzxzzzzxxzzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
