class c_1312_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1312_2;
    c_1312_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "011xz01xzz10x00x1x0110zz1x1x1z0zxzzxzxxzxxzzxxxxxxxxzxzzxzzzzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
