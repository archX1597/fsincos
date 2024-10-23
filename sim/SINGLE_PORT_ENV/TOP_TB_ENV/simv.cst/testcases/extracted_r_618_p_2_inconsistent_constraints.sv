class c_618_2;
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

program p_618_2;
    c_618_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzz0xxz100z0010xz1xzxz1zx10xx01xzzxxxzzxxzzxzzzzzxzxxxxzxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
