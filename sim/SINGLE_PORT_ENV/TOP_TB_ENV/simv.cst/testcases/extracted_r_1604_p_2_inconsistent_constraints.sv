class c_1604_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1604_2;
    c_1604_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xzz0xz1xz001zxx10x1x0xz101zzz00xxxxzxxxxxxzxzzzxzxzxxxzxxxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
