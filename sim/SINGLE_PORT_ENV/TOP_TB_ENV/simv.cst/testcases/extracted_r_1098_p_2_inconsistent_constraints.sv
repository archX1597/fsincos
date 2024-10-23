class c_1098_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1098_2;
    c_1098_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxz1z0xxx1z111x0zz1001zxzzxz10zzxxzxxxxzzzxzxzxxxxzxzzzzzzzzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
