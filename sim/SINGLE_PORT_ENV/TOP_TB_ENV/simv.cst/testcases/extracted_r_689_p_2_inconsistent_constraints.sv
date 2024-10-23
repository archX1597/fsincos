class c_689_2;
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

program p_689_2;
    c_689_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x101z0x11100z0110xxz0xx1x00x11zzzxzzxzxxxzxxxxzxzxxzzxxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
