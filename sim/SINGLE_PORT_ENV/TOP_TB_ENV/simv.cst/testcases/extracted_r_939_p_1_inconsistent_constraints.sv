class c_939_1;
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

program p_939_1;
    c_939_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z0zx00zxxz11z0xzz0xx1zxxx0z1zzxxxxxzxzzzxzxxxxxxxxzzzxxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
