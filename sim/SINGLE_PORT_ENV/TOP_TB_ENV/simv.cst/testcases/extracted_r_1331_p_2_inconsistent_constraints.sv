class c_1331_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1331_2;
    c_1331_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01zz01111x1zzxz1z010xx11zzzz0x00xxxxzzzxxzxzzxzzzxxxzzxzzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
