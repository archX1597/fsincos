class c_709_1;
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

program p_709_1;
    c_709_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1zxxz1xzz1xxx11z11zx101xzx0zzzxzxxxxxzzxxxzzzxxzzxxzzxzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
