class c_1676_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1676_2;
    c_1676_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0011001zz11z1xx0z0x0x0zx111zxxzzxxzxzzzxzxzzzxxzzxzxxxxzxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
