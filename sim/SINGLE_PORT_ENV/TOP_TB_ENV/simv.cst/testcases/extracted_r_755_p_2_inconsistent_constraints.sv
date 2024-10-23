class c_755_2;
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

program p_755_2;
    c_755_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x010zx0z1zzzzz1z0z1z1x1xx0xxx1zzzzxzzxzxxzzxzzzxzxxzzxzxzzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
