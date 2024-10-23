class c_1075_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1075_2;
    c_1075_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0xz0xzzz11z1zz0xzzz101z0x0x000zzxxxzxzzzxzzzxzzxxxxzzxzxxxzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
