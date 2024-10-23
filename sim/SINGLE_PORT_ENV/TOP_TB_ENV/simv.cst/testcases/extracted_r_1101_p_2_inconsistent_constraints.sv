class c_1101_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1101_2;
    c_1101_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1010x1x01111z11z1x0zz1x0zzxxxxzxzxxxxzxxzxxxxxzxzzzxzzxzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
