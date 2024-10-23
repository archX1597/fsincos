class c_7_1;
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

program p_7_1;
    c_7_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx10x1z0x1z1zz0xxzzxx0x1z0z1xx0xxxzxxzzxxxxxzzxzxxxzxzzzzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
