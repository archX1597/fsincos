class c_649_2;
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

program p_649_2;
    c_649_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0000x1zz0z0x0z1001x0xzxzzzxz0xzxzzxxzxxxxzxxzxzxxzxzzzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
