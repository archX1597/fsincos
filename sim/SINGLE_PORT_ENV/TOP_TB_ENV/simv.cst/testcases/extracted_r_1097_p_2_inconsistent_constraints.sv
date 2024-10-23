class c_1097_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1097_2;
    c_1097_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "10xzzx1zx11xxz001zxx11xzx000x0xxzxzxzxzzxzxxzzzxzzzzxxxzxzzxzzzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
