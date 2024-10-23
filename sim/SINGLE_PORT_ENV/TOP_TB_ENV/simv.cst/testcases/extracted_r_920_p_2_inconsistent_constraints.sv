class c_920_2;
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

program p_920_2;
    c_920_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z011zzxxxz0x00xxzzxxz0x11x0x100xxxxxzxxxzzxzxxzxzxxzzzxxzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
