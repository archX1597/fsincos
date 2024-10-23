class c_841_1;
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

program p_841_1;
    c_841_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0110xz1xx1001xzz0xz1xz010xx110zzxxxzxxzzxxxzzxxxzxxxxxxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
