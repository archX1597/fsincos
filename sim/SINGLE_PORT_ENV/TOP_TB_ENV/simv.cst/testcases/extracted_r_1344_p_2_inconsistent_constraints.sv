class c_1344_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1344_2;
    c_1344_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10x11xzxz0xx0xz1zzx1z1zxx0xz1x1zxzzxxxxzzxzxxzzxxzxxxxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
