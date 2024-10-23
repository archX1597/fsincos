class c_756_2;
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

program p_756_2;
    c_756_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz1xxx01z1z0z0z0x0zxxz0z10x1xx0zxzzzzxxzzzzxzxxxxxxxxxzzxzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram