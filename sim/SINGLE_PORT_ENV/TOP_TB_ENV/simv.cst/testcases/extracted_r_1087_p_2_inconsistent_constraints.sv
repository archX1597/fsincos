class c_1087_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1087_2;
    c_1087_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1xzzz1zzx1xzzzxx1x10x0z1xx1xzz1xzxzzxxxzzzzxzxxzxzzzxxzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
