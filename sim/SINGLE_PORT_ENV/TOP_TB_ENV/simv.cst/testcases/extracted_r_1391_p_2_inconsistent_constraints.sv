class c_1391_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1391_2;
    c_1391_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1x1x11z1xz10zx1z0zxzzz1x1zz11zzzxzxzxzzxxxzzxxzzxxxzxzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
