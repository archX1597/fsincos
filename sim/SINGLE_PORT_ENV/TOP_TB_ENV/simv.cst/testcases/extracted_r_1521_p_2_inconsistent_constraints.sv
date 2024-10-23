class c_1521_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1521_2;
    c_1521_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00xz0xz0001xz01x1z0zz0z1zx0xxzzzzzxzzzxxzxxzzzxzxzxzxzxxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
