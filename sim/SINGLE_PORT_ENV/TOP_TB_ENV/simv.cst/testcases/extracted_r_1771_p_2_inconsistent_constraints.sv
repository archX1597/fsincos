class c_1771_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1771_2;
    c_1771_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x1z0zxxxxx1x1x10xxzxzzx10z0zx1zxzxxxzxzzzzxzzxzxzxzzzxzxzxzxxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
