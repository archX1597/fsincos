class c_1191_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1191_2;
    c_1191_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z001x1x0zz1xz0zzxx1zx0x0xzxz0101zxxxxxxxzxxzxzxzzzzzxzzxxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
