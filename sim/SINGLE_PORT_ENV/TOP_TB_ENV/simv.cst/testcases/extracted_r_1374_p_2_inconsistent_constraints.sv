class c_1374_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1374_2;
    c_1374_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx00001xzz0x01x00xxzx001x11xx011xzxxzzzzxxzzxxzzzxxzxxxxzxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
