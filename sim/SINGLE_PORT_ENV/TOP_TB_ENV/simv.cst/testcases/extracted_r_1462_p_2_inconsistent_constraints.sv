class c_1462_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1462_2;
    c_1462_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1z1z00zxz00zx1x001xz11xz111101z0xzxzxxxzxxzzxxzxxzxxxzxzxzxzzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
