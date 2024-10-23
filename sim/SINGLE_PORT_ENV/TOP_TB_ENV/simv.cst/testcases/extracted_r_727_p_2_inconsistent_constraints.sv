class c_727_2;
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

program p_727_2;
    c_727_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x010xx110zx0zz1xz1z0x1zzz1xzz1xzxxzxzxxzzzzzxzzzzzzzxzxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
