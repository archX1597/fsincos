class c_1307_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1307_2;
    c_1307_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxz11z1zzz11xxx1xzz11000xxx01zzxzzzzxxxzzxxzzxxxxxxxzxxxzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
