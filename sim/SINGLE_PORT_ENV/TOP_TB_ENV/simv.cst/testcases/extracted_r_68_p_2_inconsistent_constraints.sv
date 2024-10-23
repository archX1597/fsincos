class c_68_2;
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

program p_68_2;
    c_68_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxz01zx1xz011x0xxxxz0x1zx111xz1xzzzxxzxxzxzxzzxzxxxzxxzxzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
