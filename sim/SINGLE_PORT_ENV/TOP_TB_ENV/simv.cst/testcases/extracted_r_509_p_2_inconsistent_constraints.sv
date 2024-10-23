class c_509_2;
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

program p_509_2;
    c_509_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z00zz01x10x110xxxx1zxx0x1z110x1xxxzzxzzxzxzxxzxzzxxxxxxxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
