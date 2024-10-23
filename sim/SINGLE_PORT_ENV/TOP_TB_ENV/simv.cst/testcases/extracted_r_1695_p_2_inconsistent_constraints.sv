class c_1695_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1695_2;
    c_1695_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110x100xx0zxx01z1xzxxzzz1x100001xxxxxzzzxzzzxxzxzxxxzxzzzxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
