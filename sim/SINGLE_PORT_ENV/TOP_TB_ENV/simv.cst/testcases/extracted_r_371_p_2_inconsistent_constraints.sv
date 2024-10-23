class c_371_2;
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

program p_371_2;
    c_371_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zz0x11x11x01xx0x0z1xx10111111zxxxzzzxxzxzxzxxzxxzzxzxxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
