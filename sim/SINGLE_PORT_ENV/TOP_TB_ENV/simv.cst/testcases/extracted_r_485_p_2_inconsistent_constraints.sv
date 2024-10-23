class c_485_2;
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

program p_485_2;
    c_485_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010011x11zx1zx0111101xz1x1x0x0zzxzxzzzzzxzxxzxxzzzzzzzxzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
