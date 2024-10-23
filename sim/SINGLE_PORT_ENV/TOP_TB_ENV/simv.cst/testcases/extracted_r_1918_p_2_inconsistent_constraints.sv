class c_1918_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1918_2;
    c_1918_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z01xz0xxxx1x100zz110z00zx01zz1x1zxzxxzzxzxzxxxzzzxxzxzxxxxzzxxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
