class c_1646_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1646_2;
    c_1646_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x1xx1x0zxx0xx00z000xx0zxzzzzx1xzzxzxzxzzxxzzxxxzzzzxzxzxzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
