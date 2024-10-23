class c_864_1;
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

program p_864_1;
    c_864_1 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10x0x1z0zz1x00111x01z10x0xzz0zzzxxzxzzzzxzzxxxzxzxzzzzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
