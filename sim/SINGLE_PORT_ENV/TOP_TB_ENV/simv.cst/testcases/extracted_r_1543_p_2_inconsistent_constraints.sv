class c_1543_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1543_2;
    c_1543_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "1011zzzx11xzzzzxz1z11x11x1000011zzzxzxzxxzzzxxzzxzzxzzxzxxzxzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
