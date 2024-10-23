class c_1749_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1749_2;
    c_1749_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxzz00z10zz00x1x11zxx0zxx0xz00zzxxzxxzxxzzxxzxxxzzzxxxzxxxxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
