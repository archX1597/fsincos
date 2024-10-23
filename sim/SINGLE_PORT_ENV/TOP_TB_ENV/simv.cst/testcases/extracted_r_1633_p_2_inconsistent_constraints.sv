class c_1633_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1633_2;
    c_1633_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1x0x1xzz111z00z10x00xx1zx1xx0zzxxxxxzzzxzzzxxxxzzzzxzxxxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
