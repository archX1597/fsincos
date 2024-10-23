class c_1061_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1061_2;
    c_1061_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzx0000xxxxxzxxz0101zz0110zx00zzzzzzzxzzzxxxxxzzzxzzxxzzzxxzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
