class c_924_2;
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

program p_924_2;
    c_924_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000z101zx01x1xz11zx0z10xzxz0x0zxzxxxzzxzxxxxzzzxxzxxxxzxxxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
