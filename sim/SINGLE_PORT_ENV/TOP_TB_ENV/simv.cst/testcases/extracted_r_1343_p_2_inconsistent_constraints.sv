class c_1343_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1343_2;
    c_1343_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1111z00101x00z11xxz10z1zxx10z0xzzxzxxzzxzzxzxzxzxzxxzxxzxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
