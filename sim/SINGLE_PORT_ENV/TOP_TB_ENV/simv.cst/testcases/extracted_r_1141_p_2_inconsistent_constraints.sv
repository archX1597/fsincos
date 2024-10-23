class c_1141_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1141_2;
    c_1141_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zzz01zx0001z0zx1xx00101zx01x01zxzzxzzxzxzxzzxzxxzzzxzxxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
