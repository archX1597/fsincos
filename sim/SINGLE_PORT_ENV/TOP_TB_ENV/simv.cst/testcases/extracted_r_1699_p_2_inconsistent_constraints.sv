class c_1699_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1699_2;
    c_1699_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz01x0xx00zxzzx10xx1011xxx0zz00zxxxzxxzxxxxxzxxxzzzxzxxxzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
