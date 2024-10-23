class c_1870_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1870_2;
    c_1870_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z00z1x0zz1011xxz1zzzzxx0z1xx1111xxxxzzzzzzxxzzzxzxzzzzzxxzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
