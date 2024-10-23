class c_1134_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1134_2;
    c_1134_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz10x10x110z1x10zx1zzxxx10110xzxzxzzzzxxzxzxzzxxzxxzzzzxzxxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
