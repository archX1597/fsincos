class c_1498_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1498_2;
    c_1498_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzxx1xxzx0zx1z0111zz001zxxx10xzxxzzxzzzzzxzzzxzzzzzxzxxxzxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
