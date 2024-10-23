class c_613_2;
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

program p_613_2;
    c_613_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x00z01100xx1zx1xxxzxxx1x000x1xxzzxxzxzzxxzzxzxzxxzxzxxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
