class c_150_1;
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

program p_150_1;
    c_150_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xz1110zzzx00z00000zx0z1z10111xxxxxxzxxxxxzzxxzxxzxxzzzzzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
