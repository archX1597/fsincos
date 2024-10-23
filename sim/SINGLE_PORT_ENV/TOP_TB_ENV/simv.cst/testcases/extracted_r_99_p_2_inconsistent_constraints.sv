class c_99_2;
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

program p_99_2;
    c_99_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zz10xxz0z0011z00z001zx0z0z010zxxxxzxzzxxxzzxzzzzzxxzzzzzxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
