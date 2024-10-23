class c_112_1;
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

program p_112_1;
    c_112_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0zzxxx1000x1zxx11x1x0z100z0xzzzxxxxzxzzxxzzxzzxzxxxxzzxxzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram