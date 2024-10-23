class c_1595_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1595_2;
    c_1595_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x1z01xz10zzx0zz1z0z1zz0x11z1zxzxxxzxzzxxxxzxzzxxxzzxxzzxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
