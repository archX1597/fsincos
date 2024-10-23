class c_1047_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1047_2;
    c_1047_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10z0z11xzxx00zz0zz0z0zxxz001101xxxzxxxzxxzzxxzzzxxzzzzzzxxzzzzxx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
