class c_517_1;
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

program p_517_1;
    c_517_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1xxzzxzz10xx0xzxz1zx1111zx11zzxzzxxxxzxxzzxzzxzzzzxzxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
