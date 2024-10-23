class c_1407_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1407_2;
    c_1407_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zxxz1z0zzz1x1x01zzz000xxxz100zxzzxxzxxxzxxzzxzxxzxzxzxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
