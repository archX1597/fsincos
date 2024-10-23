class c_1444_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1444_2;
    c_1444_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zz1xxz1x1x0xxzz1xz0xxzz10zz0zzxxxxxxzzxxxzxzxxxzxzzxxxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
