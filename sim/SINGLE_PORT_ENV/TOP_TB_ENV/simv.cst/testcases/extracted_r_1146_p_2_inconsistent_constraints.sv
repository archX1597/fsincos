class c_1146_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1146_2;
    c_1146_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0z000zz1z00z0zxxzxxz01z0zxz11xxxxxzzxxzzzxzzzzzxxzzzzzzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
