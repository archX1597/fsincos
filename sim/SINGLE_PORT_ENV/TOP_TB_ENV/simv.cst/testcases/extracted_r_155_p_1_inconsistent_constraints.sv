class c_155_1;
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

program p_155_1;
    c_155_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000xzxxz0z10zz0x111zzxz011xzxxzzxzxzzzxzzzzzzzzxzzxzxxzzzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
