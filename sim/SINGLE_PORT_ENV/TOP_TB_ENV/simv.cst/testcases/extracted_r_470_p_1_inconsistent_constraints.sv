class c_470_1;
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

program p_470_1;
    c_470_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1011x0x1011z11xx10z0xx10x010x1xxzxzxzzzxzzxzxxzxzxzxzzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
