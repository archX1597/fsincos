class c_1581_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1581_2;
    c_1581_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zxz1x11x0101z1z1z011zxz10zxxz01xzxxzzzxxzxxzzxxzxzxzzxzzxxzxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
