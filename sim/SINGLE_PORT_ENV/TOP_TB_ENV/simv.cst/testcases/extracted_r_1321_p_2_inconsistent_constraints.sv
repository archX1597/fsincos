class c_1321_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1321_2;
    c_1321_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z11zxzx001zzzz0z10x1xz0xxxx1xzzxzzzzxxzxxxxzzxxzxxzzzzzxxxxzxzz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
