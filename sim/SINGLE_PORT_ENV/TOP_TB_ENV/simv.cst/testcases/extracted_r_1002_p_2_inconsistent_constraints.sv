class c_1002_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1002_2;
    c_1002_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "11x11010xzx1110zx100x11xzz11x0zzxxzxzzzzxxzzxzxzxzxzzzzxzzzxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
