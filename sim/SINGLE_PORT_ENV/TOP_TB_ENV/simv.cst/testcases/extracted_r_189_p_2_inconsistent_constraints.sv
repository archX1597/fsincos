class c_189_2;
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

program p_189_2;
    c_189_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10xz1z01zzzx101x100z111xz00zxzxxzzxzzzxzzxzxzxzzzxzxxzxzxxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
