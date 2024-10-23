class c_1679_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1679_2;
    c_1679_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z101z10z0xx0x11zx11z0zz10zz1zxzxxzxxxzxzzxzzzzzzxzzxzxxzxzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
