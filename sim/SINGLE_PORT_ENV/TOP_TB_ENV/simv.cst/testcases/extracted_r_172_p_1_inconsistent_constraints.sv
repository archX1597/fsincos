class c_172_1;
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

program p_172_1;
    c_172_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010z0zxz0z0x0110z0zz01xzzz1xzzxzxxxzzxzxxxxxzxxxxxzzxxxxzzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
