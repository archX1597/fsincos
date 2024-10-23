class c_1916_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1916_2;
    c_1916_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100x1x10xx001xx1z011z00z0x100101xxzzxzxxzxzzxzxzxxxxxzzzxzxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
