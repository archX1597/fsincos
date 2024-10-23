class c_1908_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1908_2;
    c_1908_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xxz0x0zx11xx1x01x1zxx0x001z0zxxxzxzxxxzzxxzxzzzxzzzzzzzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
