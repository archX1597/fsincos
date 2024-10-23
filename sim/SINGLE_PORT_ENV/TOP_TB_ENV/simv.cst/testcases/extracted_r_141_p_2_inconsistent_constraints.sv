class c_141_2;
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

program p_141_2;
    c_141_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1zx00zx0x110zxx0z11z1zx01x11zzxzxxxzxzxxzxxxzxzxzxxzxzxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
