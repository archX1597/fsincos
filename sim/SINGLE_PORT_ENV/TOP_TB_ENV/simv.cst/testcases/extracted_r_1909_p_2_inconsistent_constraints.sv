class c_1909_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1909_2;
    c_1909_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x00z1xx1zzz0zzx1z1zxx0x100z0xzzxzxzzxzzzzzzzxzxzzxxzzxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
