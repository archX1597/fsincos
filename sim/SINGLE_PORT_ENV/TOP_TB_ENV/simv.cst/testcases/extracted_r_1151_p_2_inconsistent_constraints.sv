class c_1151_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1151_2;
    c_1151_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "01x000zz010zxzx11zx0x1zzz1zx1x01xzzxzxxxxzxxzzxzzzxxxzxxxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
