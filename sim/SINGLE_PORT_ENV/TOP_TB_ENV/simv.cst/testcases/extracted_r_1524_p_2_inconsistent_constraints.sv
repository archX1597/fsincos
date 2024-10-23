class c_1524_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1524_2;
    c_1524_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx01xx0z00z1z1xx01z101zz10z00xzxzzxzzzzxzxzxzxxxzzxzzzxxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
