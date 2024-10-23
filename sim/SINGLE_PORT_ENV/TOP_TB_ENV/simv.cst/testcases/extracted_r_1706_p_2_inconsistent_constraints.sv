class c_1706_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1706_2;
    c_1706_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z1x101zxzzx0x1x011zxzx10x0zzz1zzzzxxzxxzzxzxxzzxxzxxzxzxzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
