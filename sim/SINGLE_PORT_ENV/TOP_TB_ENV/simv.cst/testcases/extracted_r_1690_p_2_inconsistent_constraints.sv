class c_1690_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1690_2;
    c_1690_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z1zxxzz010z0xzz11x01x1xx1z100zzxxxxxzzzxzzxxzxxzxxxzzzzxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
