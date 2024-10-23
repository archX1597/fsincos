class c_1480_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1480_2;
    c_1480_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xx0z1zx0x1x0xzz1z01x0xzx00x0xz0xxzzzxxxzzxzxxxzxxxzxzxxxzxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram