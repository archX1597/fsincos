class c_681_2;
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

program p_681_2;
    c_681_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxzx00zzz1z0z1z10z0z00z100xx00zxxxxxzzxxzzzzzzzxxzxzxxzxxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram