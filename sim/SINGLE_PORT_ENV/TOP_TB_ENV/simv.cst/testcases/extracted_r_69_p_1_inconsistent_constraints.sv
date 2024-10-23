class c_69_1;
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

program p_69_1;
    c_69_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z11z01zx1zxzxzx01zx010zx1z1xz0z0zzxxzzxzzzzxxxxxzxxzzzxxzxxxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
