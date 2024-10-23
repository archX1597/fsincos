class c_1780_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1780_2;
    c_1780_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz0x1110x1z11000011z1zz1x0010zxxxzzzzzzzzxzxzxxxzxzxzzzzzzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
