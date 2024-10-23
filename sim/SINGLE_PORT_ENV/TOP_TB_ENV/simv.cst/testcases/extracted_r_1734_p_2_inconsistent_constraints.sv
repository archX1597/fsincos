class c_1734_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1734_2;
    c_1734_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zx011zx1zx0z001x111x1xxzx0z1zx1zzzzzxxxzxzxzxxxxzzzxxxzzzzzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
