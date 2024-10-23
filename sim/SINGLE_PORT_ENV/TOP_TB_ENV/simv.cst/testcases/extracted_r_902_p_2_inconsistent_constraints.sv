class c_902_2;
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

program p_902_2;
    c_902_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z1001z11z1z10xx1xz0zxzxx10zzz1xzxxxzzzzzzxxxxxxxxzzxxxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
