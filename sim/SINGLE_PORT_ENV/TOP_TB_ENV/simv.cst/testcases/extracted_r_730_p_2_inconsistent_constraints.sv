class c_730_2;
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

program p_730_2;
    c_730_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1zx1zz10xz1z11xz10z1z001xzz11xxzzxzxxxxxxzzzxxzxzxxzxxzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
