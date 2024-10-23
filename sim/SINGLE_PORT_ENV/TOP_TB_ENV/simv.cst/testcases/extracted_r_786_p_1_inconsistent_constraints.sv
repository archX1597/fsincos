class c_786_1;
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

program p_786_1;
    c_786_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "101x11xxzxxz1xzzzx0x0101xz1xxxzzzzzxxzzzxzzzxzzzxzzxzzxxzzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
