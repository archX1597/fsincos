class c_811_1;
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

program p_811_1;
    c_811_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zz00z1z1001z10xzz1xxz100zxz1xz1zxxzzxxzxzzzxzzzxzxzxzzzxzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
