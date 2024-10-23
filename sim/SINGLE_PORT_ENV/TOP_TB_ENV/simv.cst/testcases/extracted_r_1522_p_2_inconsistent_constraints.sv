class c_1522_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1522_2;
    c_1522_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000111zx1zxzz1z0xzz00z1x00xz0x0xxxxxxxzxzxxxxxzxxxxzxxxxzzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
