class c_1245_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1245_2;
    c_1245_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx0x1x11zx1x10x0xx11zz1zz1111zxzxxxzzxxzxxxzzxzxzzxzxzxzxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
