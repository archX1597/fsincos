class c_1016_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1016_2;
    c_1016_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "000z1xxx11101000x0xzxzx1x1xzxxzxxzxzzzxxzxzxxzzzzxzzzxxxzxzzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
