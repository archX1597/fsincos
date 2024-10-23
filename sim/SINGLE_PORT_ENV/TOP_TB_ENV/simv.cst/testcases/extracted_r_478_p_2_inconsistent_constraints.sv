class c_478_2;
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

program p_478_2;
    c_478_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x001zxzxx0z0010zz1z00xzx0x1z0xzzzzzxzxzzzxzxxxxxzxzzxxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
