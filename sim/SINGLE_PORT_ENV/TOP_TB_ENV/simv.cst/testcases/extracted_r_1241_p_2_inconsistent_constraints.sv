class c_1241_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1241_2;
    c_1241_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1x0xx0z00x1z111101001zxx0xz101xzzxzxzzzzxzxxxzzzzzzzxxzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
