class c_1541_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1541_2;
    c_1541_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00xxx0xzx0z0011xz00zxzx01x0xxzz0zzzzxzxxzzzzzzxzxzxxzzzxzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
