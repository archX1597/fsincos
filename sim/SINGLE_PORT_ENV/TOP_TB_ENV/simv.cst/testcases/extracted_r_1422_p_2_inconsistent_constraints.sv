class c_1422_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1422_2;
    c_1422_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxzz1z1z0x10zxzx00zxz1zxx0z10xzxxxxxxzzxxxxzxzxxxxxxxxxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
