class c_1694_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1694_2;
    c_1694_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z10xzx110xxz0xx1x11xzzx1z1011x1xzzxzxzzzxzzxxxzzxzxxxxzxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
