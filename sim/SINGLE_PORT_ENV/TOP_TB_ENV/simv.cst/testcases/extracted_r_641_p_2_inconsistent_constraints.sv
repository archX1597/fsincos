class c_641_2;
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

program p_641_2;
    c_641_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx01100xz11zzxz00z10zx0x110x11xzxxxxxzxzxxzxxzxxzxxzzzzxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
