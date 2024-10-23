class c_647_1;
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

program p_647_1;
    c_647_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0zx111xzxx01z0z10z01z0zx1zz00xzzzzxxxzxzxzxzzxxzzzxxxzzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
