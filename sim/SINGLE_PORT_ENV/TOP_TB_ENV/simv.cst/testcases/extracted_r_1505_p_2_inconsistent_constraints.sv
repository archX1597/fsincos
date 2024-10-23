class c_1505_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1505_2;
    c_1505_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xzz1z110x0x0xzz11zx1zzxz101z1zxzzxzzzzzzxxxxzzzxzzxzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
