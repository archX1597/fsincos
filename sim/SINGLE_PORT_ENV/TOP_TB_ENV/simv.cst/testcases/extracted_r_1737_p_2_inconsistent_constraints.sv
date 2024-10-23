class c_1737_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1737_2;
    c_1737_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0zxxzz0zz01011zx001zzx011x01x00zxzzzzxzzxzxzzxzzzxxzzzzxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
