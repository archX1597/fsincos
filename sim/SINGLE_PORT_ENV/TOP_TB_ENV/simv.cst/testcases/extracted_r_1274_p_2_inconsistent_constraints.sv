class c_1274_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1274_2;
    c_1274_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0zzz1110x1x1x1001x01zz1x0x10x1zxzxxzzzxzxxxxzzxxxxzzxzzxxzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
