class c_1417_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1417_2;
    c_1417_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1xx1zzxx0z0x0xz11z0zzzz010zzxx10xxzxxzxxxxzxxzzxxxzzzzxxzxzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
