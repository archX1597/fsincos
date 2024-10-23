class c_1693_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1693_2;
    c_1693_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00x01x1xzz011110x0x00x0x11zz1z11xzxxzzzxxzxxzzxzzzxxzxxxzzxzxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
