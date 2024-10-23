class c_2000_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_2000_2;
    c_2000_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111zz0zz101z1111x11z0xxx0xxx0z0zxxxzxzzxzxzxzzzxzzxxxxxxxzzzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
