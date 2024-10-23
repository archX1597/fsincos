class c_1719_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1719_2;
    c_1719_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z000xz000zz0101x0x00zzz1zzzzz0z0zzxxxxxzxxzxzxxzzxxzxzzxxxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
