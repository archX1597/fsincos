class c_1455_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1455_2;
    c_1455_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "z0xzxz01zxz11z0xz110z11xzz0zz0xzzzxxxzzxzxzzxxzzzxxxxxzxzxxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
