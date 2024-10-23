class c_1424_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1424_2;
    c_1424_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zz0zz0x1001zz10xz11010xxz1x1xxxxzxzxzxzzxzzxxzzxxxzzxzzzzxzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
