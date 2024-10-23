class c_1542_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1542_2;
    c_1542_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzzzzzzx10xx110zzz1z0zx0x101xz11xxzxxzzxzzxzzxzzxzxxzxxxzzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
