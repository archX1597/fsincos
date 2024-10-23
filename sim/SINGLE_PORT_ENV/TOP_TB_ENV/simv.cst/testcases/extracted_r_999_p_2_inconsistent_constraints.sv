class c_999_2;
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

program p_999_2;
    c_999_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xxz001zzz1x00111zx0xxxz1z00x11xzzzzzxzxzxzxzzzzxxzxzxzzxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
