class c_1170_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1170_2;
    c_1170_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zz01z10x11zz0xzxx100000x1zz1zz1zxxxxzzxxxxzxzzzxzzzzzzzzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
