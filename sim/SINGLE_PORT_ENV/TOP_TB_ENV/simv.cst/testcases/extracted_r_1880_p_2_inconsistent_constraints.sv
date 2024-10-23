class c_1880_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1880_2;
    c_1880_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x0zz1x1101zxxx1z1x0100z0zxxzz1zzxzxzxzzzzzxxxxzzxzxzzzzxxxxzxxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
