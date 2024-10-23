class c_1867_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1867_2;
    c_1867_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10x11x1z1z0x0zxzx0001xz11xzz0z11zxxxxxzxxzxxzzzxzzzzxxzxxxxxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
