class c_1060_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1060_2;
    c_1060_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzxzxz0z1xx01xzxx1x00zzxzx00xz1zzzzxzxzxzzxzzzxxxxzxxxzxxzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
