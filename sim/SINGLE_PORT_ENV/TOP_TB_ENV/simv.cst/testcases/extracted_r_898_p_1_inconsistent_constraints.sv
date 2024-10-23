class c_898_1;
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

program p_898_1;
    c_898_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzzx0xx0xz0z1xzzzz1z1011x0zx10xzxzxzxzxzxzzzxxzzzzzzzzxzxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
