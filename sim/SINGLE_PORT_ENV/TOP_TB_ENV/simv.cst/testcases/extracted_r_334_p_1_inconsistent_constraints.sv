class c_334_1;
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

program p_334_1;
    c_334_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z11zzx01z0xx00z1zx1x1z1zx1z0xxxzzxxxxxzzzxzzzzxzxxzxxzzxxxzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
