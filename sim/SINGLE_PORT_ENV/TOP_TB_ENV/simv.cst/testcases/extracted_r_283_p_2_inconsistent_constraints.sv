class c_283_2;
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

program p_283_2;
    c_283_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0001xx0zxz10111x1xx1x000111z1x0zxxxzzxzzxzxzzzxzxxzxxzxzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
