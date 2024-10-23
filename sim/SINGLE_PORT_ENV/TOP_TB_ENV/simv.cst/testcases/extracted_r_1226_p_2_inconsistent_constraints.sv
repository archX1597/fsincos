class c_1226_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1226_2;
    c_1226_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "010x1xx1x1x1x0xzz11z11zz1zz00101xxxxxxzxxzzzzzxxzzzxxxxzxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
