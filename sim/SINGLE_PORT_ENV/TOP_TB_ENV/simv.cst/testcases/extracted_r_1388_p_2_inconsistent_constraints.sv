class c_1388_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1388_2;
    c_1388_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x00z1z1zzx001zx00x1zz10xx0xxx1zzxzzxxxzxzzzxzxzzxzzxzxzzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
