class c_1947_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1947_2;
    c_1947_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1zx1z0x1x1zz0z1z1zx1x0z0x01zxx10xxxzzzxzzxxxzxxzzzzzxxzxxzxxzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
