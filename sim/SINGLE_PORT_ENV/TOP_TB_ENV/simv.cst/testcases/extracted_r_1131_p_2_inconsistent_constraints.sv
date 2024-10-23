class c_1131_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1131_2;
    c_1131_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xxxz1x1100x1xz0z0x100111011z00xzxzzxzxxxxzzxzzxzzxzzxxzzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
