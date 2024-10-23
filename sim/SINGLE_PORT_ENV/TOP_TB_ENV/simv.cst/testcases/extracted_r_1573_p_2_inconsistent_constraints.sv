class c_1573_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1573_2;
    c_1573_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z101zz1x0100x1z01xz1z0zx0xx0xzzzzzxxxzxxzzxzxxxzzzxxxzzxzxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
