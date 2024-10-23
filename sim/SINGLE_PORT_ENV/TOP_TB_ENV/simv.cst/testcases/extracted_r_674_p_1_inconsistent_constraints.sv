class c_674_1;
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

program p_674_1;
    c_674_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11xxxxzx0z01xxx0x11xzz1z0z0x1x00xxzxzxxxzxzzzzxzxzzxzzxzxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
