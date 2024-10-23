class c_1716_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1716_2;
    c_1716_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xx101zxx1z0x1100zxxxz110x11zz010xxxxzxzzxxzzzxxzzzzxxxzxxzxxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
