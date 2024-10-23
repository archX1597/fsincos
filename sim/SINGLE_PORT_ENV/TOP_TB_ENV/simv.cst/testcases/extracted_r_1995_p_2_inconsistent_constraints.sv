class c_1995_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1995_2;
    c_1995_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz110zx1zzxxzzxz1zz1100z11xz11xzxxxxzzzxxxzzzxzxxzzzzxxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
