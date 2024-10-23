class c_1820_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1820_2;
    c_1820_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010x1101100x00x1xzzxz01xxz10z0zxzzxxxxxzxzxzzxzzxxxzzzxzzzzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
