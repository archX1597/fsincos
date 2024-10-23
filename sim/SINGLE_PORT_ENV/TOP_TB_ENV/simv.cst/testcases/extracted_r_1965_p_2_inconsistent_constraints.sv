class c_1965_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1965_2;
    c_1965_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01xzz1001000101zxz01x11111x0x0xxzzzxxxzxzzxzxzzzxxzzxxzzzxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
