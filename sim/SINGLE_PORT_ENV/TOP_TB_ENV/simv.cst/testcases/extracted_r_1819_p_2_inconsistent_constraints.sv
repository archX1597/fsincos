class c_1819_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1819_2;
    c_1819_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011z0z10zzxzx0z1zx0z00011xx11001xxzxxxxzxzzxxzzzxxzxzzzzzzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
