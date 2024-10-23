class c_632_1;
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

program p_632_1;
    c_632_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111zx01x101x0x0z100zz11z1zx01011xxxxzxxxzzxzzzxxzzxzxzxxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
