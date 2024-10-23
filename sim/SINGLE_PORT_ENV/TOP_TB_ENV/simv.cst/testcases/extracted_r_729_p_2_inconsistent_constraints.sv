class c_729_2;
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

program p_729_2;
    c_729_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00xx11x00xzzz10zx10010z1z1zx1z0zzxzzxzzzzxxxzxzzxzzxxxzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
