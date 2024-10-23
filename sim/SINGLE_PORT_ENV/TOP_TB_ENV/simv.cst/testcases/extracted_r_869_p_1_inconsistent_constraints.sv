class c_869_1;
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

program p_869_1;
    c_869_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1z1z0xx0z0xz1x1z1z01z00zzxz10zxzxzxzzxzxzzxzzzzxxxxxzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
