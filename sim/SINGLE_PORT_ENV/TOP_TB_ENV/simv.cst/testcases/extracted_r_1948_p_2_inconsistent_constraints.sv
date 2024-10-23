class c_1948_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1948_2;
    c_1948_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xxxx00x10x1011xzx0x1z0zzz1z0zx1xzzxzzzxxxzzxxzzzzzzxxxzzzzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
