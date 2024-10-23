class c_1741_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1741_2;
    c_1741_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000111x0zz110z11z1zxzxz1zz0zzzzxzxzxxzzzzxzxxzzzzzzzxzzxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
