class c_1081_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1081_2;
    c_1081_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xzx0xzx01x0xzx1zxxz1x01001z0zzzzxzxzzxxxzxxxxzzxxzxzxxzzxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
