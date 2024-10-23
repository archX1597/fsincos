class c_559_1;
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

program p_559_1;
    c_559_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z10010xzxxz0z0zz1z1xx001xz100zzzzxzxzxzzxxzxzzxxxxxzxxzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
