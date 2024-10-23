class c_573_2;
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

program p_573_2;
    c_573_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10zz11x0z011z111z0z0xx0110x1111xxxxxxxzzxxzzxzzzzzzxzzzxxxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
