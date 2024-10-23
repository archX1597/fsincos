class c_1593_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1593_2;
    c_1593_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz01z0zx1zxzx10xxzzx01x111x01xzxzxzxzxzzzxxxzzzxzzzzzxxzxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
