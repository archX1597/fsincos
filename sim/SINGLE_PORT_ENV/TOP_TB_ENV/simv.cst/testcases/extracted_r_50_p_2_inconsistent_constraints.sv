class c_50_2;
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

program p_50_2;
    c_50_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10zz11110zxz1z1z1xzx0x0x0111z1xxxxxxxxxxzzzzxxxzxxxzzxzxxxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
