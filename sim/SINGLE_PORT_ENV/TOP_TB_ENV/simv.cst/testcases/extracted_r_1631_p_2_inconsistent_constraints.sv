class c_1631_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1631_2;
    c_1631_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x1zxzz1x00zzx0z1z10010xx0x0z0xzzxxxzxzzxxxzxzzzxxxxxxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
