class c_451_2;
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

program p_451_2;
    c_451_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1xx111zzxx00z0xz10x0x01001x000zzxzxxzxxzzzxzzxzzxxxxzzzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
