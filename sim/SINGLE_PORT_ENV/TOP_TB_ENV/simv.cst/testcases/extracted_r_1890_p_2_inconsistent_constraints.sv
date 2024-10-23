class c_1890_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1890_2;
    c_1890_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xxzx1011zx10x0xxzx1x01zxx001xx10xzzxxzxzzzzzzzzzxxzxxzzzxzzzxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
