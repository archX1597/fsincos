class c_941_1;
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

program p_941_1;
    c_941_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x00zz01x00x1101011zz1z001zz0xxxxxzxxzzxxxzxzzxxxxxxzxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
