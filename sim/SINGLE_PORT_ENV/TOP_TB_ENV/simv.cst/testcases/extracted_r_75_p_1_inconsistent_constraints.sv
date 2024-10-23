class c_75_1;
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

program p_75_1;
    c_75_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz1x1x00x01z00z011x11000xz1x01z1xxzzxxzzzxxxzxxxxzxzxxzxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
