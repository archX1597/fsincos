class c_391_2;
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

program p_391_2;
    c_391_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zz0x0xz0xxz10z0101xx11zz100x00zzzxzzzxzzzxzxzxzzxzzzxzxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
