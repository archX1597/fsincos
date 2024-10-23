class c_552_2;
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

program p_552_2;
    c_552_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0z110z1xxz0x11101z1zz0xx0xxx1xxxzxxzzxzzzxzxzxxxxxzzzzxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
