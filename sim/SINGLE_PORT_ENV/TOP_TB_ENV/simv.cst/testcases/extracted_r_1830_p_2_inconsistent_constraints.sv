class c_1830_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1830_2;
    c_1830_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1x1x011xz1101zx10x1x1zz1zx1zzz1zzxxzxxxzzxzxxxxxzxzxxzzzxxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
