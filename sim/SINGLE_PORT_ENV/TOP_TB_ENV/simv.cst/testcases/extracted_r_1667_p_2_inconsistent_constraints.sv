class c_1667_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1667_2;
    c_1667_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z1zz0zz00zx10x1z0zzzzzxzxzxxz0zxzzzzxzxxzzzxzzzzzxzxxxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
