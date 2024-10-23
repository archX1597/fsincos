class c_1979_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1979_2;
    c_1979_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0000zxxzx01xzz0z1000001x0xz1x0x1zzzzxxxxzxzzzxxzzxzxzxxxxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
