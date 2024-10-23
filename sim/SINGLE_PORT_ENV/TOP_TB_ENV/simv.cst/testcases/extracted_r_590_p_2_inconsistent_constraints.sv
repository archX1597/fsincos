class c_590_2;
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

program p_590_2;
    c_590_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xx1111xz1x1z0zxz00xz1xzxz0111zzzzxxxzzxzzxxxzzxzzzxxzzzxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
