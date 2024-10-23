class c_1003_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1003_2;
    c_1003_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0xz1011x0xxxxxxx100zz1x0zz1x0zx1zzxxzxzxzzzxzxzxxzxzzxxzxzzxzxxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
