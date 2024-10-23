class c_1224_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1224_2;
    c_1224_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0xx100x01x11xxzzxxxx11z1zx10x0zxxzxxzxzxzzxzzzxxxzzzxzxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
