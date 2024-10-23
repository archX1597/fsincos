class c_988_2;
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

program p_988_2;
    c_988_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0110xzzz1xx00xzxzx0xz0z1z1z01111zzzxxzxzxzzzxzzzzxzxxzxxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
