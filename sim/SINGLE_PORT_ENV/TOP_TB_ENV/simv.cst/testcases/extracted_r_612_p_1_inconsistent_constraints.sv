class c_612_1;
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

program p_612_1;
    c_612_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00xx111z0xxz0xz11zxx1zx01110x1xxzxxzxxzzzzzzxzxxzxxxxzxzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
