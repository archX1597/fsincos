class c_266_2;
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

program p_266_2;
    c_266_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0011100z0zzzzz000100xxx0zz1x0x0xzxzxzzxzxzzxxzxxxzzzzzxzxxxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
