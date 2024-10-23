class c_1468_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1468_2;
    c_1468_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0x00z1x1zx1x1z1x100xz01x011xxz1xzxxzxxzzxxzzxzxxzzxxzxzxxxzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
