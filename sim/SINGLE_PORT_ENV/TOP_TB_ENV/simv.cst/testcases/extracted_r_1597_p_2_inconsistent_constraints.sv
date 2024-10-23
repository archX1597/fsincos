class c_1597_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1597_2;
    c_1597_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01xxx00zx0z0z010x01z000x00xx0z0xxzzzxxxzxxxxzxxxzzzxxxxzxxxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
