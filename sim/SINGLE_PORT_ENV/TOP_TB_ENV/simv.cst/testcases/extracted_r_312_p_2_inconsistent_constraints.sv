class c_312_2;
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

program p_312_2;
    c_312_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x100z11xx1xz111zx0z0x00xz0xzx0z1zxzxzzzxzxxxxzzxzzzzzxzzxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
