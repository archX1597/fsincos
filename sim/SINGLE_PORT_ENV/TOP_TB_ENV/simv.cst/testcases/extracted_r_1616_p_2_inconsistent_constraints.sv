class c_1616_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1616_2;
    c_1616_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxzzx0z01x00z01zz11x00x1x0zx01xxzxxxzxxxxxzxxzzzzxxxxzxxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram