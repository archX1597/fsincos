class c_1642_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1642_2;
    c_1642_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1x0zxzxx1zzxxzzz11x0zz1z011zzxzzzzzxzxxxzzxzxzzxzzxxxzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
