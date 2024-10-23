class c_889_2;
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

program p_889_2;
    c_889_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z01z01000x111zxzx1z0zxz001z0xzzxzzzxzzxzzxzxzxzxzxzxzzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
