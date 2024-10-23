class c_1930_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1930_2;
    c_1930_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxx0x0010xz1x0x0zx100x1z1x11xz01zzxxzxzzzxzxzxzzzzzxzxxxzxzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
