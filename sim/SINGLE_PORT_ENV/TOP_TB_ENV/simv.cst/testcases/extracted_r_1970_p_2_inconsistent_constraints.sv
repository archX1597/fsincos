class c_1970_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1970_2;
    c_1970_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100011zz0x10z1xx1zxzz1x0zzxzxxzxxzzzzxzzxxxxxzzxzzxzxzxxxxzxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
