class c_1582_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1582_2;
    c_1582_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzzx1zxz10zx00xzx0101xxz11zx00zxzzxzzxxzzxzxxxxzzxzzxzzzzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
