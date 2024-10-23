class c_1063_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1063_2;
    c_1063_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000100x1zx01x100011z11zzz1z11010zzzxxzzzxzxzzxzxzzzzzxzxxxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
