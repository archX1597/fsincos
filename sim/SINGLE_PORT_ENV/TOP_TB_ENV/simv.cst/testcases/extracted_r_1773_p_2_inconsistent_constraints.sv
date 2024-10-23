class c_1773_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1773_2;
    c_1773_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111zzx0x10x1zzx11zxz0z1010zxxxzxzxxxzxzxxzzzzzzxxxxxzzzxzzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
