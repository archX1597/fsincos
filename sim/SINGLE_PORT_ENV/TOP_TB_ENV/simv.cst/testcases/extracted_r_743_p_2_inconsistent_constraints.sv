class c_743_2;
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

program p_743_2;
    c_743_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxz1xx1x0z0x10x11x0zx01z1z01xx10xxzxxxzzzxxzzzxzzzzzxzxzzzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
