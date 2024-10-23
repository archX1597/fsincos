class c_1907_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1907_2;
    c_1907_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x1x0xxz1z0xzz110xzzzzx1xzz1z1xzzzzzxzzzzzzxxxxzxzzzzzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
