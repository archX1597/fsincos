class c_1088_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1088_2;
    c_1088_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzx1xxzz1xx10z11zz00z10x0x010zzxzzxzxxzzzzxxzxzxxxxxxzxzxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
