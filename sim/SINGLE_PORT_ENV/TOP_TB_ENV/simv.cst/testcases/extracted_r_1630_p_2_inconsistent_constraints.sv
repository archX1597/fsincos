class c_1630_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1630_2;
    c_1630_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz00xzx0x10zx00z0x1zx11000z10zxzxzxxzzzxxxzzzxzxxxxxzzxzxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
