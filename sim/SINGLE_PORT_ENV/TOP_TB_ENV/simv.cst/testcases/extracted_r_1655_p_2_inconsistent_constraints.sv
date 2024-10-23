class c_1655_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1655_2;
    c_1655_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxxxxxz10z11x00x1x11z001xxxzx01zxzzzxzzzzzzxxzxxzzzxxzxzzzzxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
