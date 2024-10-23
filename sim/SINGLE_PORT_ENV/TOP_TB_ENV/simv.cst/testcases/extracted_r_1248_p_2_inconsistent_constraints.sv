class c_1248_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1248_2;
    c_1248_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz10x11x1z10z10x10z1xzzz01x1xx0xzzxxzzxzzzxxxzxxzzzxzxxzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
