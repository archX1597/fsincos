class c_77_1;
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

program p_77_1;
    c_77_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0000xz000x0zzzx0zz1z0011x1z110zzxxzzxzzzzzzzxzzzxxxxxxxzzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
