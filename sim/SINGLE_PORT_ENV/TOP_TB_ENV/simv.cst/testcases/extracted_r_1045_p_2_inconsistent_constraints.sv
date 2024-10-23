class c_1045_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1045_2;
    c_1045_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0011zz0z01xzx011zz1z0x0xz0zx0z0zxxzzzzzzxzxxzxzxzxxzzxzxxxxxzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
