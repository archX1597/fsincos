class c_1297_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1297_2;
    c_1297_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzx011z0z001101zxx00x1xxz1010zz0xzxxxzxzzzxzzxxzxxzzzzzzxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
