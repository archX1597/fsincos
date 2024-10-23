class c_201_2;
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

program p_201_2;
    c_201_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0010z101z1x11z0z1001xx0x1x11x1xzzzzxxzzxzzzzxxxxxzxxzxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
