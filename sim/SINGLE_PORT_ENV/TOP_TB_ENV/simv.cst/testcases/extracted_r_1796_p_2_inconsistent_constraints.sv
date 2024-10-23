class c_1796_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1796_2;
    c_1796_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx001z0zzzz0x111x0x10zxx10zzz10xxxxxzzzzxxxxxzxxxzzxxzzxzzzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
