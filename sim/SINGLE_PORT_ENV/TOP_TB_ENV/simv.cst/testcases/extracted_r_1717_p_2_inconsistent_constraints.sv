class c_1717_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1717_2;
    c_1717_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1x0x1zxz0zx00z0100z0x10xzxzz0xxxzxzzzxzzxxxxzzxxzxzxxzxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
