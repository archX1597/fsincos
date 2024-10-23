class c_934_1;
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

program p_934_1;
    c_934_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzzz1xzx00001xz111001z01111zx10xzxxzxzzzxzxzzzzxzzzzxzzzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
