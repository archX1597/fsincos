class c_1277_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1277_2;
    c_1277_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz01xxxz1z0x1z1x0x101zx0z11z01z1zzxxzzzzxzxxxzzzxzzxzxxxxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
