class c_1210_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1210_2;
    c_1210_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz11zzz1x001xz01111zxzxxxxx01xxzxxzxzzzxxzxxzzzzzzzzxxxxxxxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
