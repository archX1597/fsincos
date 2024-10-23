class c_1484_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1484_2;
    c_1484_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0x0zzz101011xx10x1zz1z0zz0z101x0xxzxzzxzzxzzzxxxzxxxzxxzxxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
