class c_1147_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1147_2;
    c_1147_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z10z0x10zxxx0xx0000xxx0xx00z01xzzzxzzzzzxxzzxxxzzxxzxzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
