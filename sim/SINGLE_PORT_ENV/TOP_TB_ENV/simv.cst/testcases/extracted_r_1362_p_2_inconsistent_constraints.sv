class c_1362_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1362_2;
    c_1362_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0zzz1z0zx0xzxxzzx0x00xx0x00xzxzxzzzzxzzxxzxzzzxzzxxzzzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
