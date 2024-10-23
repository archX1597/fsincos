class c_236_1;
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

program p_236_1;
    c_236_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0z01000zxx1101zx00xzx1z10xzz1zzxzxxzzxxxzzzxzxzxzxzzzzzxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
