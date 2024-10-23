class c_12_1;
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

program p_12_1;
    c_12_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1x0z0xxx11x0z11zz1x1zzxxxzz011xzzxxzzxxxzzxzxzzxxzzzxzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
