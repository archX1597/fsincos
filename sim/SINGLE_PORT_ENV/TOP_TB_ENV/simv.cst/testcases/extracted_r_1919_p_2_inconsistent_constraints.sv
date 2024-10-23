class c_1919_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1919_2;
    c_1919_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0xz1zz1100z10zx1z1z0x0xzzz1xzzxxxzzxxzxxxxzzxzzxxzzxzxzzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
