class c_1556_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1556_2;
    c_1556_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzzzz000xx101zzz00z01z010xzzz00xzzzxzzzzzzzxxzxxzxxxzxzxxxxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
