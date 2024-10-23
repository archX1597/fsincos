class c_1030_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1030_2;
    c_1030_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z100z100z1010x1zx0z1x11z1xzz1101xxxzxzxxxzxzxzxxzzxxxxzxzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
