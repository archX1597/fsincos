class c_1107_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1107_2;
    c_1107_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz100011xxz0000x0xz0x1xx01zzz010xxxxxzxxzxxzxxxzxzzzxzzxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
