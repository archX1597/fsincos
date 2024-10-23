class c_46_1;
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

program p_46_1;
    c_46_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1zzxx01x1111xzx10xx01zx0x1z000zxxxxzzxxzxzxxxzxzzxxzzxzzzxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
