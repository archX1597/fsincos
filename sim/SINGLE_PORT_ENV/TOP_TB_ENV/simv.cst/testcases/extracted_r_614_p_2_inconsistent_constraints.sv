class c_614_2;
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

program p_614_2;
    c_614_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zxzzz1zzxx1zzx00z00zxx0xz0zzz1xxxxxzxxzxxzzxzxzxxxxzzxxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
