class c_1303_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1303_2;
    c_1303_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x1z10z11zx0z0xx011111xxx0xxxz0xxzxxxxxxxxzzxzxxzxxzzzzzxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
