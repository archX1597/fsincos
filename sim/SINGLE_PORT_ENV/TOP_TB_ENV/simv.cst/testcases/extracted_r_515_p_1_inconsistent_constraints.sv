class c_515_1;
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

program p_515_1;
    c_515_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0z01101x1xz1zzxzz1111x1001z010xzxxzzxxzxxxxxzzzzxxzxzxzzzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
