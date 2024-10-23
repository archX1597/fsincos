class c_1610_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1610_2;
    c_1610_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z1zx1zz1111xxx00101x1x0zxxzz110zxxxzxzzxzzxxxxzzxxzzxxzxxxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
