class c_460_2;
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

program p_460_2;
    c_460_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1zx1010z1z0z01100zzx100110zx1zzzxxxxxzxzzzzxxzzxxzzxxxxxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
