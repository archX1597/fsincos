class c_1264_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1264_2;
    c_1264_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzz1z1zxx1x10x11x01zz00110100xzzzxzzxxxzzzzxxxxzxzzxxzxzxzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
