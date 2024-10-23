class c_1526_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1526_2;
    c_1526_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxx00001zzzzxz0xx10z1zz1zxx1xz0zxzxzzzxzzzxzxzxxxxzzzxxzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
