class c_1635_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1635_2;
    c_1635_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zx00z1zz0z01zxz111zx0xxz010z11zzzxzxxzxxxxxxxzxxzzzxxzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
