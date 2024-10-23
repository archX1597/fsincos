class c_1440_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1440_2;
    c_1440_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101xz0xx1xx01zxzx110zxz1z1z1z0z1zzzxxxxxzxxxxxxzxxzxzxzzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
