class c_353_2;
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

program p_353_2;
    c_353_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z0111zz0xxxz1z1xzxxxxxz1x0z0zxzzxxzxzxzzzxxzzzxzzzxzzzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
