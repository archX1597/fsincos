class c_1926_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1926_2;
    c_1926_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zxx1xz0xzxx0010x1zz000z001zzx1zzxzzxzzxzxxzxxxzzzzxzzzzzzzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram