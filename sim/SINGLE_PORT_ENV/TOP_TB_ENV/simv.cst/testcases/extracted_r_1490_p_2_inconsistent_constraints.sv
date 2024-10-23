class c_1490_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1490_2;
    c_1490_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zzxzz1x11110z1x1xx111x1zz1zxx00zzzxxxxxzxxxxzxzzzzxzzzzzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
