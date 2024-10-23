class c_1144_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1144_2;
    c_1144_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "0010x0zz0110x00xx11zx0xzz11x1x0xzzzzzzzxxzxzxzzxzxzzzzzxzzzxxxxz";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
