class c_323_1;
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

program p_323_1;
    c_323_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x0z0z0z0xx01xzz00zzz01x000x0xxzzxxxzxxzxxzxzxzzxxxxzzzxxzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
