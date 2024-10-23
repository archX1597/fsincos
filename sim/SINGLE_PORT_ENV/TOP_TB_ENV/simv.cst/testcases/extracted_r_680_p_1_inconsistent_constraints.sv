class c_680_1;
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

program p_680_1;
    c_680_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xz0zz10xx1z1zx1x1zz0z101101z11zzzzzzxzxxzxzzxzxxzxxxzxzzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
