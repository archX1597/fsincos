class c_1006_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1006_2;
    c_1006_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z110xx10x01z110011zx1z1x1z000xxzxxxzxxzxzxxxzzxzzzzzxxzzxxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
