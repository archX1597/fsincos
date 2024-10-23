class c_1949_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1949_2;
    c_1949_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1z00zxzx10x1xx0x011x1xxzz0xz1xzxxzxzzxxxxzzxzzxzzxxxzzxxxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
