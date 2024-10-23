class c_1457_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1457_2;
    c_1457_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x01x1zx1011111zz01x00010111z0111xxzxxzxzzxxxzxxxxxxzxxxxxxzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
