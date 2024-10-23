class c_1022_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1022_2;
    c_1022_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxx0000111xx101xxx01z11xx0x1xz01xzxxxzxzxzzzxzxzzxzzxzxxxzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
