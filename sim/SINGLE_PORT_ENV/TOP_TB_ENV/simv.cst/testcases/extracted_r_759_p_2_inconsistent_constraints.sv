class c_759_2;
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

program p_759_2;
    c_759_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z1x1xxz1z1z1z0z10xz0z0zxzx1z10xzxxzxzxzzxxzxzzzzxxzxxxzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
