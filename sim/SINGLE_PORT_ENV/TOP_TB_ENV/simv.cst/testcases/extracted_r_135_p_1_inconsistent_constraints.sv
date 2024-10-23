class c_135_1;
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

program p_135_1;
    c_135_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx10111zz0001xz1zxx0xz11100xz10zzzzxzxxxzzzxzzzzxxxzxxzxzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
