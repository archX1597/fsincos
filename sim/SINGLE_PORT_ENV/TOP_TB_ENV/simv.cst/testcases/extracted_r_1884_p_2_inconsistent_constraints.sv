class c_1884_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1884_2;
    c_1884_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11z0zx111xzz1xx0z01z01101xzx0x10xxzxxxzxzxzxzxzzxzzxxzzzzzzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
