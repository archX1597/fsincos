class c_353_1;
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

program p_353_1;
    c_353_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz1zz01z0111x001z00z1zxx11011zzxzxzxzxzxzxzzxxzzxxxzzzzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
