class c_1508_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1508_2;
    c_1508_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "110101z0zzzxx0zx00zzzx0xz1010111xxxzxzxzzzzxxxxxxxzxxzxxxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
