class c_445_1;
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

program p_445_1;
    c_445_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z00zxzx1z01zzx00100xx0z1011x11xzzxxzxzxxxzxzzzzxxzxxzxzzzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
