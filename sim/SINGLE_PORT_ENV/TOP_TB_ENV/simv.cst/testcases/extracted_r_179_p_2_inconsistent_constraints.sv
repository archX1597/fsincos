class c_179_2;
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

program p_179_2;
    c_179_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10xz1z00x0zzz0z10z00x0xx1xx0011xzxzxxxzxzzxxxzzxzxxxxxxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
