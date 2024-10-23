class c_731_2;
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

program p_731_2;
    c_731_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x00x0z1x11x1z11000xzzxz0x0xxx1xxzxzxxxzxzxzzxxxzxzzzxxxxxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram