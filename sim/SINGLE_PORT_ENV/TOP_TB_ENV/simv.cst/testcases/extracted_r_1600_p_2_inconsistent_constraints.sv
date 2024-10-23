class c_1600_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1600_2;
    c_1600_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "001zzzz0xz11zzzzx1zx1110x1z0x0x1zxzxzxzxxzzxxxzxxzxxxzzzzxzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram