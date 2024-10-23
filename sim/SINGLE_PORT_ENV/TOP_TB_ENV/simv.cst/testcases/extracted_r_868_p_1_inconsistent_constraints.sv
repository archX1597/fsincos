class c_868_1;
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

program p_868_1;
    c_868_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z110z0xx1x1xx0x10z11zx110z000x1zzxxzxxzxxzzzzzzxxzzxzzxxxzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
