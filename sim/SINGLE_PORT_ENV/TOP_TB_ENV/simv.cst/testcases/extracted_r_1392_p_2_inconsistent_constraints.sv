class c_1392_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1392_2;
    c_1392_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xx0zx00x0zxx1xx100x00x11z1100xxxzxxzxxzxzxxxzxxzzzzzzzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
