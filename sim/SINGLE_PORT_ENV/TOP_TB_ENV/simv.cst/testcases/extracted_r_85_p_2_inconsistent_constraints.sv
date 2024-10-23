class c_85_2;
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

program p_85_2;
    c_85_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz1zzzz1x0z1zz0100x1x0x1xxx1zxzxzzzxzzxzxzzzzxxzzzzzzzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
