class c_1772_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1772_2;
    c_1772_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx00xzzz0x11zzxz11z011x0x10xz110xxzxzzxzxzxxxxzzzxzxzzzxxzxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
