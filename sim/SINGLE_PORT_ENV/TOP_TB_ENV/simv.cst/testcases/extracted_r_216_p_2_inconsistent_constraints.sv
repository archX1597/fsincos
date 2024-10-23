class c_216_2;
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

program p_216_2;
    c_216_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx100z1z0z1x0zzz0xzxz0xxzzzx11z1xzzzzxzxzzzxxzzzzzxzxxxxzxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
