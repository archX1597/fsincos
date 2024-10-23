class c_771_2;
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

program p_771_2;
    c_771_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1xzz001zz000x1x10zx0zx1z0xz101xxxzxxxzxzzzzxxzzxxzxzzxzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
