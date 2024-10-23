class c_17_1;
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

program p_17_1;
    c_17_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zzzxz10000xzx0x100x1x010x11x11xzzxxxzzzxxzxxzzzxxxzzxxxxzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
