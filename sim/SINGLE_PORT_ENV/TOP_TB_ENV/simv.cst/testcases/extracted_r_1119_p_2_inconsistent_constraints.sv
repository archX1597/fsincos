class c_1119_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1119_2;
    c_1119_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zx0zzxzx0111zxxz000z110x1xz0xx0xzxxxzzxxxxzzzzxxzzxzzzzxxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
