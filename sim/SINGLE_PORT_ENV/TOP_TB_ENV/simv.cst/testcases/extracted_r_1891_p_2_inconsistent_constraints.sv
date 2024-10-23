class c_1891_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1891_2;
    c_1891_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx1z10x0x1x0x0z1x000xzx10z1xz00zzxzzzxzxzxzzxzzxxzzzzxzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
