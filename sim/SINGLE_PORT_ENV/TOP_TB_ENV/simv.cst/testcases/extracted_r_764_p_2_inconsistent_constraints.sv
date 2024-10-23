class c_764_2;
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

program p_764_2;
    c_764_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx1z0xxzx1xz0z100zxz00z0zxxz00x0zzzxxxxzzzxxzzxzxxzzzzzxxxzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
