class c_634_2;
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

program p_634_2;
    c_634_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z010zx011xx0z0110x1101z10z100xzxxxzzxxzxzzzxxxzzxxxxzxxzxzzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
