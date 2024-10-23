class c_1857_2;
    bit[31:0] frac32 = 32'h0;

    constraint cons_this    // (constraint_mode = ON) (../UVM_ENV/f_transaction.sv:29)
    {
       (frac32 > 32'h80000000);
    }
endclass

program p_1857_2;
    c_1857_2 obj;
    string randState;

    initial
        begin
            obj = new;
            randState = "xzz0zzzz1zxx1zx0xxxzz1xx00xx11xxxxxzxzxzxzzxxxxxxxzxzzzzxzxzxzzx";
            obj.set_randstate(randState);
            obj.randomize();
        end
endprogram
