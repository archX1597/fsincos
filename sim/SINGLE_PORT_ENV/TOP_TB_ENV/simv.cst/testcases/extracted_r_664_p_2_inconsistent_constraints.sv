class c_664_2;
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

program p_664_2;
    c_664_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx110z1x00z00x0xxzxxxx1x01010xzxxxzzxxxxxzzzxzxzxxxzzxzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
