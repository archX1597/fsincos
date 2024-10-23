class c_458_1;
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

program p_458_1;
    c_458_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx011011zx0z0010x0xzx0z00zz01xzzxzzxxxxxzxzzxzxxzzzzzxxxzxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
