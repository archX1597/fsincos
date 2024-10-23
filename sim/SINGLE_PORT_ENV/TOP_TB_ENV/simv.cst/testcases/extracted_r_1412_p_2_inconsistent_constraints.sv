class c_1412_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1412_2;
    c_1412_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x1xzzz11zzx01zz11zz1xz01zzz1xxzxxxxxzxxzxzzxxzxzxxxzzxxzxzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
