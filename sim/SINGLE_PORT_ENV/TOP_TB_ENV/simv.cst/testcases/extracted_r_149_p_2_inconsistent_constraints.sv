class c_149_2;
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

program p_149_2;
    c_149_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz1xx0xx1z0001x11zz0z1x00z110xzzxzzzzxxzzzzxxxzzxxxzzzzxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
