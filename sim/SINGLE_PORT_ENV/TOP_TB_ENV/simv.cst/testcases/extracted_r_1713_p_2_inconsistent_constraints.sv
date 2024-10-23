class c_1713_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1713_2;
    c_1713_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0x0xx000x0xzxz110x000zz001zz1xzxxxzxzzzzzzxzxzxxxzxxzzxzzzxxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
