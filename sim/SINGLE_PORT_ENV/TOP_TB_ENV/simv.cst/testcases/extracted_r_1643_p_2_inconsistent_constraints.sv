class c_1643_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1643_2;
    c_1643_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1x1xz10zx0z0001xxz1xzxx00x1xzzxzzxxxzxxxzzzxzxzzxxzxzzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
