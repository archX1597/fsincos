class c_694_2;
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

program p_694_2;
    c_694_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xzxx0x11xx11zxz1x0x1xxx0z1z1zz0zxzzzxxzxxzxzxzxzzzxxzzxzxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
