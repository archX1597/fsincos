class c_1550_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1550_2;
    c_1550_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x010101zx00z1z1xzz0x1zx1z0zz1011zzzxzxxzzxzzzzzxxzxxzzzzzxzxzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
