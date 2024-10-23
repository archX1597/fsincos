class c_1553_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1553_2;
    c_1553_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1x011xzzx11zzxxz10z0xzx0x010x0xzzxzxxxxxzzzzxzxzzzxxxzzzzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram