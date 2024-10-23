class c_814_2;
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

program p_814_2;
    c_814_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11101z01xx0zx1zz1000zx1zx1z1z1z0zzxzzzzzzxzxzxzxzzxzxzzzxxzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram