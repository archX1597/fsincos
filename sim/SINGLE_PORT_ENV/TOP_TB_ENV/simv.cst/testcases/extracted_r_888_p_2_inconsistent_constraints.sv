class c_888_2;
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

program p_888_2;
    c_888_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxx1xz11x10z11xz1100z0x00110zz1xxxxzzzzzxxzzzzzxzxxxxxzxzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
