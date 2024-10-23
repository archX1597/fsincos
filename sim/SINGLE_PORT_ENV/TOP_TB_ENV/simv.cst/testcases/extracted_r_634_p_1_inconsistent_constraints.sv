class c_634_1;
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

program p_634_1;
    c_634_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zz0zzx1zzx01x01zz1xz1011x0xzz1zxxzzzxzzxzzzxxxxxzxxxzxzxzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
