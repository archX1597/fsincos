class c_554_1;
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

program p_554_1;
    c_554_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1000x1x0z1xxxz101x1z01z1zx110110zxxzxzxzxxxxxxzxxzxxxzxzzzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
