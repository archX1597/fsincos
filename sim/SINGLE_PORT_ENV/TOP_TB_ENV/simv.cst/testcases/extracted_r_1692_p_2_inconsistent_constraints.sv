class c_1692_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1692_2;
    c_1692_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0z1z0z0xxz1zz01xzz101z0xzx10x11zxzzzzxzxzzxxzxzxzxzxxzzzzxxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
