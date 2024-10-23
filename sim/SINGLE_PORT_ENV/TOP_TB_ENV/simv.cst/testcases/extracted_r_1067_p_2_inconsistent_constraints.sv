class c_1067_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1067_2;
    c_1067_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011x0z01zx000z1011z11z1z010x1x0zzxzzzzxxxzzxxzxzxxzzxxxzzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
