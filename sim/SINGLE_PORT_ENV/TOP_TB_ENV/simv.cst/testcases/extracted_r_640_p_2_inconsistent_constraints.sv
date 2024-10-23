class c_640_2;
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

program p_640_2;
    c_640_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z10z0z1zx1zz0xzxx1xzxz0x011x1011zzzxxxzzxxxxxzxzzxzxxzxzzzxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
