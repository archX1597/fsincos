class c_769_1;
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

program p_769_1;
    c_769_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xzx0z01xxzx0001x0x0xxzxx001z11xxxxxxzxzzzxzzxxxzzzxxxxxzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
