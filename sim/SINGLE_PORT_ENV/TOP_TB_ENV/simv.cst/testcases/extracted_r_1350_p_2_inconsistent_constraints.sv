class c_1350_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1350_2;
    c_1350_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0111xx1zzzzx0x110zz1xx1zz01zzzxxxxzxxxxzxzzxxzxxxzxxxxxxzzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
