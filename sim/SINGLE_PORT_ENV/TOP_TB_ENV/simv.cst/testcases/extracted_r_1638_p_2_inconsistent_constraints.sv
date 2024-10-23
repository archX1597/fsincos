class c_1638_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1638_2;
    c_1638_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0z000xx1z1xxz0xz11z010x1xzx101x0xzzzxxzxxzzzxzzzzzzxzxzxxzxzzxzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
