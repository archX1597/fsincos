class c_405_1;
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

program p_405_1;
    c_405_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzzx1z1xx0x1x1z0xx00z1zzxx000zxxxxxzzxxxxxxzzxxzzxxxxxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
