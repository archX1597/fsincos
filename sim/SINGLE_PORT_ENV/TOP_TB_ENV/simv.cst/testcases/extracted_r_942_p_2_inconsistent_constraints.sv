class c_942_2;
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

program p_942_2;
    c_942_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzz1z1x0z101z01xz00xx0z0xzxx11xzxxzxxzzzzzxxxxxxxzxxzzxxxzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
