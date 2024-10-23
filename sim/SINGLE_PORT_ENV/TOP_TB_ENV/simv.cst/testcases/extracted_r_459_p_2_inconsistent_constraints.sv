class c_459_2;
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

program p_459_2;
    c_459_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x0011zz0z1x0z10zxx01x000z10x00xxzzxzxzzzxzzzxxzxxxxzxxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
