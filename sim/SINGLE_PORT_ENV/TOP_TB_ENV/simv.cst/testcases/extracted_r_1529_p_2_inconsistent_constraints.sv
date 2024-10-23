class c_1529_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1529_2;
    c_1529_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x11x00zxx11z000010x0x01x010z0111zzzxzxxzzxxxzxzxxxzzxxzxxxzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
