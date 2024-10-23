class c_638_2;
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

program p_638_2;
    c_638_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00x01011x0x1x111z100xx0x0110x1xzxxzzxzzxxxxxzzzxxzzxxxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
