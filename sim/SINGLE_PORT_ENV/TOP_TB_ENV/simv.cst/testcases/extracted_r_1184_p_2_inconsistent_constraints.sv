class c_1184_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1184_2;
    c_1184_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0z10zzx00xz10z110xxxz1110010zzzzzzxxxzzxzxzzxzxzzzxzzxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
