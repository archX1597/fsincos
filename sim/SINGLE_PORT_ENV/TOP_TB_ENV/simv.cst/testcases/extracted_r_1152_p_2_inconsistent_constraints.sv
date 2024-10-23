class c_1152_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1152_2;
    c_1152_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx00xzz001xxz1zx0z010x10xxzx11xzzxzxxxzxzzxxxzzzxzzxzzzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
