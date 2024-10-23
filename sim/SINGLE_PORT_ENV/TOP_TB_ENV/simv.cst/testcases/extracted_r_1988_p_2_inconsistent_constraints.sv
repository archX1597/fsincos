class c_1988_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1988_2;
    c_1988_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zxz1z1xzzx1xz01x10xzxxx00xz0xxzzxzxxxxxxzxzxzxzzxzxxzzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
