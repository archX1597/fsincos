class c_1220_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1220_2;
    c_1220_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1zx101111zx1x11xz0zxxz01xz10xzxzzxzzzxzzzxzzxxxxxxzxxxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
