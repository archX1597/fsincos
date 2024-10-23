class c_1682_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1682_2;
    c_1682_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zzxx0x1x1100x0x1z001zxxzx0z1zz01zxxxxzxzxzzzxzzzxzzzxzxzzzxzzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram