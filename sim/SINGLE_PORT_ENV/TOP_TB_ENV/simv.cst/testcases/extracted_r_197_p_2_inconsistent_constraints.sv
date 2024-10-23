class c_197_2;
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

program p_197_2;
    c_197_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zzzx0xz1xx00z0xz0z0zz1xxx0zxz0zxxxxzxxzxxxxzzzxzzzxzxxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
