class c_972_1;
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

program p_972_1;
    c_972_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x1x0xx1zzz1x01x1xxx0xzz1zx1z0zzzzxxxxxzzzzxzxzxzzzxzxzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
