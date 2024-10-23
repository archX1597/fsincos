class c_1942_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1942_2;
    c_1942_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1zxx11z0x010x1x0xz0z1110xx1xzxxxzxzzzxzzxzxzzzzzxxzzxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
