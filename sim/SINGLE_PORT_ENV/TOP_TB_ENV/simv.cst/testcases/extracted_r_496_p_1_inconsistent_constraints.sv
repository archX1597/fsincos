class c_496_1;
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

program p_496_1;
    c_496_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz10zzzxzz10xzz0xzx1xx0zx0z0zz1xzzzzzxzzxzxzxzzzxxzxzzzzxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
