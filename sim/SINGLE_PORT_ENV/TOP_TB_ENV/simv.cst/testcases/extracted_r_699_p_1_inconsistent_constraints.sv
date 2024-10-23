class c_699_1;
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

program p_699_1;
    c_699_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x1111x1001001x1001110x101xz0zxxxxzzzzxzxxzxxzxzzxzxxzzxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
