class c_1698_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1698_2;
    c_1698_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001xx0zz1zx1xzz0z1z00xxz0zx00111zxzzxxzzzzzzzxxxzxxxxzzzxzzxxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
