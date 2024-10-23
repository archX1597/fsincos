class c_165_2;
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

program p_165_2;
    c_165_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00111z1x0zx0xxz00z011xxzz101x0z0zzzzxzxxxxxzzzzxzzzxzxzxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
