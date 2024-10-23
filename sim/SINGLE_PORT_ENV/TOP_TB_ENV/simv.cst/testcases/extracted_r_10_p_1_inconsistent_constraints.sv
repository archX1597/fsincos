class c_10_1;
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

program p_10_1;
    c_10_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100z00zxz10xx01x0zz1z1z0zz10x1zzzzzxxzxzzxxzxxxzzzzxxzzxzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
