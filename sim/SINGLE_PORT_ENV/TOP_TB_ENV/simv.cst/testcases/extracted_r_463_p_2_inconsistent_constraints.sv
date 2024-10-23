class c_463_2;
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

program p_463_2;
    c_463_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxxzz01zx11x101zzz0x1xx0xxxz10xzzxxzxxzzxzxzxxxzxzxzxzxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
