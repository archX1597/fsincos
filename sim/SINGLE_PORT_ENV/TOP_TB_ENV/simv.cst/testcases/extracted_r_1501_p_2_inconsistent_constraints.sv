class c_1501_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1501_2;
    c_1501_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0xx1z1xxx1xz0xxzz11x00xxz110x0zxzzzxxzxzxzxzxzxxzxxxzxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
