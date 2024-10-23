class c_899_1;
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

program p_899_1;
    c_899_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzz1zx11x1z0z1xzz101xz01x10x10xxxxxxxxzxzxzxxxzzxxzxzzzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
