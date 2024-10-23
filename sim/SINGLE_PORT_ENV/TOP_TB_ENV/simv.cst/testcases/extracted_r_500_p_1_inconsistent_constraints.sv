class c_500_1;
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

program p_500_1;
    c_500_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110xx11xzx0xzz1x1xzz1x001xx1z0x1xzxxxzxxzxzxxzxzxxzzxzxzxxxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
