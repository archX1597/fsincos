class c_1536_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1536_2;
    c_1536_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "00z10xx0zz011x0011z11xzxzxzxxzx0xxxxxxxzzzxzxxzzzzzzxxzzzzzzxxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
