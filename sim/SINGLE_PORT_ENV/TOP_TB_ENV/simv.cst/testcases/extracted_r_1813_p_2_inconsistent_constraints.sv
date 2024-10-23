class c_1813_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1813_2;
    c_1813_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xz0100zxx0111xx1zz1x000xz1xzz1zzzxzzzzzzzzzxzxzxxzxxxzxxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
