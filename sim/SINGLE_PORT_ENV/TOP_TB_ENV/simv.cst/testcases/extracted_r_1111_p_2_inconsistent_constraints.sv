class c_1111_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1111_2;
    c_1111_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zz11x1zz11zzzx01zxx0zxxz01x0xzzxxzzxxzzxzzxxzzxzxzxzxzzxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
