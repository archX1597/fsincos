class c_1454_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1454_2;
    c_1454_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz010z01zzzzx011111z0xz0z00z10z0xzxzxzxzxzxxxxzxzxxzzxxxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
