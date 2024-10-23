class c_1987_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1987_2;
    c_1987_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zzxx0x1zx001xx10xx0zzxzx11xzx1xzxzzzzzzzzzzzzxxxxzzxxxxzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
