class c_144_2;
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

program p_144_2;
    c_144_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010zx1xzzxxz0x0z111x00z0z0z1z1x0xzzxxzzxxxxxxzxxzzzzzzxzzzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
