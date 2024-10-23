class c_1008_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1008_2;
    c_1008_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10x111x1xz0z0010zzxz1z1xz1xz0xzxxxzxxxxzzxxzzxzxxxxxzzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
