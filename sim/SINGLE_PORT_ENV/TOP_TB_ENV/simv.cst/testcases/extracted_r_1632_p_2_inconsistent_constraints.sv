class c_1632_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1632_2;
    c_1632_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100xxz0z1x0100x1zzzx110101xz0x0xxxzzzxxxzxzzxzxxzxxxzxxzxxzxxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
