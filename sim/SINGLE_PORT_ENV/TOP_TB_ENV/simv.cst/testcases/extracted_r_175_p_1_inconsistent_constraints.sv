class c_175_1;
    rand bit[7:0] f41_exp8; // rand_mode = ON 

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (f41_exp8 == 8'hfc);
    }
    constraint WITH_CONSTRAINT_this    // (constraint_mode = ON) (../UVM_ENV/f41_sequence.sv:14)
    {
       (f41_exp8 <= 8'h80);
    }
endclass

program p_175_1;
    c_175_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1101z11010xx1z0xxz1zx0000zx1101xzxzxxxxxxxzzxzxzxzzzxzzzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
