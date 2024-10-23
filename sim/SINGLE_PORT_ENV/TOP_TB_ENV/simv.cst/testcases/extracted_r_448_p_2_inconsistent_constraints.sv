class c_448_2;
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

program p_448_2;
    c_448_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzxzx1xx1xzz1x11x1zx0x0x010zx01xzzxxzzzzxzzxxzxxzzxzzzxzzzzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
