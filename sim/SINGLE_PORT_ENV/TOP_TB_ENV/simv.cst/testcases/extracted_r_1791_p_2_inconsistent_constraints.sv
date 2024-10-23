class c_1791_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1791_2;
    c_1791_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz110xz11101zxzxxz1z1xz110zz00xzzxzzzxzxxxzzxzxzxzxxxxzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
