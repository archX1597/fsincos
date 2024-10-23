class c_851_1;
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

program p_851_1;
    c_851_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0000z0zxx0zxx0z00xz0x0z1100zzzzxzxxxxzxzzxxzzxxzzxzzxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
