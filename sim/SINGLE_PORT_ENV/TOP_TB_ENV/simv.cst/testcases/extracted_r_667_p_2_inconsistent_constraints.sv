class c_667_2;
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

program p_667_2;
    c_667_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzxzxz0011zx010110xz10011xzxz00zxxzzzzxzzzxzxxzzxxxxzxzxxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram