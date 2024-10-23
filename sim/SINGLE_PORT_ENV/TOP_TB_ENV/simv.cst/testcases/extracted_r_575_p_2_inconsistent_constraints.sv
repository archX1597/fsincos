class c_575_2;
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

program p_575_2;
    c_575_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z101xxxx0zxx00zz00zxxxzzx0xxz0x1xzxxzzzxxxzxxzxzzzxxzzxzxzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
