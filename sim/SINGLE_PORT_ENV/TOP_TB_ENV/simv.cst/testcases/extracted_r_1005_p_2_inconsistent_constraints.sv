class c_1005_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1005_2;
    c_1005_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z0z0xzz110x1x00xz1z1xz0xz10z10xzxzxxxxzxxzxxxzxxzzxzzxzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
