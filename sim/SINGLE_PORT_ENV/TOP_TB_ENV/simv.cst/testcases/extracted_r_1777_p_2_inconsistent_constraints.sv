class c_1777_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1777_2;
    c_1777_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111z0x0xzz1z00z01x1z110zx1xx0z0zzxxzzxzxzzxxxxxzxxxzzxzxzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
