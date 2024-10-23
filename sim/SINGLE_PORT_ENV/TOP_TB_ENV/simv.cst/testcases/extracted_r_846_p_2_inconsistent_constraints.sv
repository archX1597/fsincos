class c_846_2;
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

program p_846_2;
    c_846_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x011xzz00z111zx0zzxz1zx1z10zz0x1xzzzzxzzxxzxxxxxzxzzzzxzzxzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
