class c_1603_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1603_2;
    c_1603_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x1xz100x1xx00xzx11x10zz0x1zzzzxzzxxxzzxzzxxzzzzxzxzxzxxzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
