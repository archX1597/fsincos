class c_1651_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1651_2;
    c_1651_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz101xxx0xx001x1xz1z0zxz011x11z1xxxxzxxxzzzzxxzxxxxxxxxxzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
