class c_1669_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1669_2;
    c_1669_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0zxxz1xz0001101z100z1010x0xz0xx1xzxzzzzzzxzzzxxzzzxxzxxzzxxzxzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
