class c_1482_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1482_2;
    c_1482_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000x0xx1000x0zxxzz00z00z1xxxxxxzxxzzzzxxxxxxxzzxzxxzxxxzzxxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
