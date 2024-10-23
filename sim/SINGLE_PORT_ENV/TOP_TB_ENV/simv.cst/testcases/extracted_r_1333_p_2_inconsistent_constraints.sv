class c_1333_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1333_2;
    c_1333_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "100zz0110100xzzxzz11z11z0zz1x0x1xzxzxzzxzzzzxzxzxzzxxzzzxxxxzzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
