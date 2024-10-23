class c_1314_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1314_2;
    c_1314_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000z01x10z11z001x01111zxx0zx0z1zzxzzxzzxzzxzxxzxzzxzzxxzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
