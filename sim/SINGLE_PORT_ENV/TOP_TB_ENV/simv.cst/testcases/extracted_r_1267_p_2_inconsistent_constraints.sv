class c_1267_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1267_2;
    c_1267_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000zxxzz0x0zx1z11xx1z1xzxxz1x0x1zzzxzxzzxzzxxxxxzzzxzzzzxxxxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
