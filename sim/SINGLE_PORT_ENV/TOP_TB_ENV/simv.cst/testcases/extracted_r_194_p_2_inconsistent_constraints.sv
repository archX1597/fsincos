class c_194_2;
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

program p_194_2;
    c_194_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz11z1xz0zz1010zz101zz1x00zz10xzxxzzzxzxxxxzzzxxxxxxzzzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
