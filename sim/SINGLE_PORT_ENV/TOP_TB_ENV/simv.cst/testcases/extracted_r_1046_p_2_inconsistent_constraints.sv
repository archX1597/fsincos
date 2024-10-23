class c_1046_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1046_2;
    c_1046_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx001xzzx00xxz0z0x11z0zxx1zzx101xzzxxzxzxzzxzzxzzzzzzzzxzzxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
