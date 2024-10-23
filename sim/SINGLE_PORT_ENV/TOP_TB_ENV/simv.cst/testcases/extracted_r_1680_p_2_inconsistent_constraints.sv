class c_1680_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1680_2;
    c_1680_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxxx0x00x1z11z110xzzzx1x1011zz0zxzzzxxxzxzzxzzzzxzxzxzzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
