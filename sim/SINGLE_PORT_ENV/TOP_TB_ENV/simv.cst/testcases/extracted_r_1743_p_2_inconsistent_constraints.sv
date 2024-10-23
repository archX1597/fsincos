class c_1743_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1743_2;
    c_1743_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0z1zz0z0z001zzxzzxxx1zxz0110x1zxzxxxzxzxzzzzzxxzzxxxzzzxxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
