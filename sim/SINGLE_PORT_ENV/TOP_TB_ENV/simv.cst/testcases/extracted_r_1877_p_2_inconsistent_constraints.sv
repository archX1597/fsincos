class c_1877_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1877_2;
    c_1877_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x10z00x0000xx1x0zx1z000111x10z1zzxxxzzxzzxxzxzzxzzzxxxxzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
