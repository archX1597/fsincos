class c_1617_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1617_2;
    c_1617_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11zxx0xzz111z11x010x1x0zx1xzzzz1zzxzzzxxxzxxxxxxxxzxzxzzzxzxzzxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
