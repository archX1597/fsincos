class c_1637_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1637_2;
    c_1637_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx1010zxx10zxxzxxx1zx01x1101xx0zxzxzzzxzxzzxzzxxxxxzzzxxxzxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
