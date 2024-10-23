class c_1406_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1406_2;
    c_1406_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzz1101x0111xz000zz0z0z1xx1xx11zxzxxzxzzxxxzzzxzxzxzxxxzxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
