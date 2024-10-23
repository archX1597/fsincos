class c_1453_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1453_2;
    c_1453_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z100100xx0xz0z0011zxx1zx0zzxz1xxzzzxzzxxxzzxzxzzzzzxzxxzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
