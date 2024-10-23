class c_824_2;
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

program p_824_2;
    c_824_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0100011xz010zz1z011x1z11z1xz1z0xxzzxzzxzzzzxzxxxxxzxxzzxzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
