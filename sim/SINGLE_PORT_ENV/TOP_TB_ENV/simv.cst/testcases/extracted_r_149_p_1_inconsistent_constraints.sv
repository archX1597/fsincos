class c_149_1;
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

program p_149_1;
    c_149_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0z101000x10z1xx1xxzx1zz1x0x001xzxxxxzxxzxxzxzxxxxzxzzzxzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
