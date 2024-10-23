class c_885_1;
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

program p_885_1;
    c_885_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101111xx0zx1zz0x111xz1z11z0x1z0zzzzxzzzzxzxxxxxzzzxzxzzxzxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
