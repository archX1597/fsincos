class c_1580_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1580_2;
    c_1580_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zxz1xxx111x100zz00z1xx1zzz1x00xxzzzxxzxzzxxxzxxxzxzxxxxzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
