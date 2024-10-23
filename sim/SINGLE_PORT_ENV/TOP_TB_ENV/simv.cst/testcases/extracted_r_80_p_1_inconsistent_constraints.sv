class c_80_1;
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

program p_80_1;
    c_80_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x11zx001zz001x01z0110zz1zz011xzzxzzzxxxzxxzxxzxxzzxxzxxxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
