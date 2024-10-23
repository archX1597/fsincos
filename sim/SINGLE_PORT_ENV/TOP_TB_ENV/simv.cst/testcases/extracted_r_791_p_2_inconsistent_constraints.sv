class c_791_2;
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

program p_791_2;
    c_791_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx000xx10z1zzzz1x0z11zzz0z1xx011zzzzxzzxxzxxzxxzzzzxzxzzzxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
