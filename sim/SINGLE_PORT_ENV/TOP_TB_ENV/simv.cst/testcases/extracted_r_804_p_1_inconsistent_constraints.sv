class c_804_1;
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

program p_804_1;
    c_804_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx1010zx11xx0xxxx0x10x11x1001xxxxzxxzzzzzxzxzzxzxzxzzzzxxzxzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
