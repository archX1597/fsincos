class c_1483_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1483_2;
    c_1483_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x10xx111z100z0zxzxx1x1z111xzz0xzzxzzzzxzzxxzxzzzxzzxxxzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
