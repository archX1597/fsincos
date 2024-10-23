class c_594_1;
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

program p_594_1;
    c_594_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z100xxz0zxxxx0xxxx00011zz0zxz1xzxxzxzxzxxxzxzxzxxzzzxzxxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
