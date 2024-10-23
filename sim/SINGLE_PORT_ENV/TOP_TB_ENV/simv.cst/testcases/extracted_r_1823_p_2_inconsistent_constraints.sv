class c_1823_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1823_2;
    c_1823_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z0x10z0zx1zxx1x0xxz0z1xxx01z011xzxzxxzxzzzzxzxxzxxzzzzzzzxxxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
