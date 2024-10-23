class c_1055_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1055_2;
    c_1055_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxxzzx0xzxx11x0z0100xx01zz001xx1zzzzxxzzxxxxzzzxxzzzxzxzxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
