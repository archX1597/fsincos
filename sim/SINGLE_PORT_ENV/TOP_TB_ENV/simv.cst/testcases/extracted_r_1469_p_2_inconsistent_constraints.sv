class c_1469_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1469_2;
    c_1469_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xz10010x1zx1xz0x11zx11z1z1000zxzxxxxzzzzzxxzzxxzxxxxzxxxzxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
