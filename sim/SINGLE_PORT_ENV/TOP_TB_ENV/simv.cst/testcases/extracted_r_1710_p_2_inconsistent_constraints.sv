class c_1710_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1710_2;
    c_1710_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzx0xxz11x00xx1110z00x1z0zz01zxxzzxzzxzxxzxzxzxzxzzxxxzxzzxxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
