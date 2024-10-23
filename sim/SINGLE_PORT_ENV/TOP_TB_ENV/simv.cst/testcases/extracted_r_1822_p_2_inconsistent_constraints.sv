class c_1822_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1822_2;
    c_1822_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x0zz0xx00zxz11z0x110xz01z1100zzzzxxzzxxxxxzzxzzzxzxxzxzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
