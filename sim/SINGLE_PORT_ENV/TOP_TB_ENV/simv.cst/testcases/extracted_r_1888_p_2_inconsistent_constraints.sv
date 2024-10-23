class c_1888_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1888_2;
    c_1888_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "111111z0101001x101zx1z1x110x0x0xzxzxxzxxxzzxzzzzxxxxxzzxxzxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
