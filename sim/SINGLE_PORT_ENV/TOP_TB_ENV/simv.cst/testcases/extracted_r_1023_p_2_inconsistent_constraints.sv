class c_1023_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1023_2;
    c_1023_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01z1xzxxx111zz1xz01zxxzzx0x0z0zxzxzxzzzzzxxzxzzxzzzxzxxzzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
