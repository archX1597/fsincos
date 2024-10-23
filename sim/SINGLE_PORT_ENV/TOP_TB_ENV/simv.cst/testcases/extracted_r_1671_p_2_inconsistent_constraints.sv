class c_1671_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1671_2;
    c_1671_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00xz0xx1zx00z1x0x0zx000xxzz1000xzxxzxxxzzzxxzzxxzxxzxxxzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
