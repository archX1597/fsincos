class c_1707_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1707_2;
    c_1707_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0xxxxxx0z00xxx1010001z1xz0zz0zxxzzzxzzzzxzzzxzxzzzzxzzxzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram