class c_1358_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1358_2;
    c_1358_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxx000001zz11000z11zx11xzz11zzzxzzzzxzxzzxzxzzxxzzxxzxzzzzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
