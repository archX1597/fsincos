class c_1878_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1878_2;
    c_1878_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1x0zxzx1x01z11zzzzz11110101z1zzxzzxzzzxxxxzzxxzzxzzxzzzxxxzzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
