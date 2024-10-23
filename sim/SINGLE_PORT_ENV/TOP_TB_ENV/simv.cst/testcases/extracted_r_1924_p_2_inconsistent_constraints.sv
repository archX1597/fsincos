class c_1924_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1924_2;
    c_1924_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "zz100x1x1xzxxxx011x1x0zz01x0xx1xxxxzzxxxxxxzxzzxzxxxxxzxxzxzzxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
