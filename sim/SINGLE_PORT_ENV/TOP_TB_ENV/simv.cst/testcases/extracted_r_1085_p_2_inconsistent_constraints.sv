class c_1085_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1085_2;
    c_1085_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001z1101x11100x1xx0z0zx00x0zxzxzxzzzxzxzzzxxxzxxzxxzzxxzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
