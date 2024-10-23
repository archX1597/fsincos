class c_1572_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1572_2;
    c_1572_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "x00x11z110x0zz1x01x10z0zxzxx1110zxxzxxzzxxzzzzxzxxzxxxxzzzxxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
