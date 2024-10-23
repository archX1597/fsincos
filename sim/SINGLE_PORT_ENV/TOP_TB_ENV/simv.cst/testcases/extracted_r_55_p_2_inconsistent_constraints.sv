class c_55_2;
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

program p_55_2;
    c_55_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zzx11100x0x1zz1zzx10xxz0z1x1xxxxzxxxxzxxxxxzxxxxxzzzxzxzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
